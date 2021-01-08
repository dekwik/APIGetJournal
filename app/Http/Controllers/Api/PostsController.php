<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\post;
use File;
use Tymon\JWTAuth\facades\JWTAuth;

class PostsController extends Controller
{
    public function create(Request $request){

        $posts = new post;
        $posts->user_id  = Auth::User()->id;
        $posts->abstrak = $request->abstrak;
        $posts->judul = $request->judul;
        $posts->doi = $request->doi;

        //Check If Post
        if(!empty($request->file('file'))){
            $posts->file = $this->fileHandling($request, 'file');
        }
        
        //Mistake
        $posts->save();
        $posts->user;


        $userID = $posts->user_id;
        
        $user = new User();
        $userFcmToken = $user->where('id', $userID)->get(['fcm_token'])->first();

        $ch=curl_init("https://fcm.googleapis.com/fcm/send");
        $header=array("Content-Type:application/json", "Authorization: key=AAAAR7CoT0Q:APA91bHuLr-RGd9MiElMR4vDxft6yVHte12Q-XQwy0LV94PpbFpU8Ug05-jJYlXBVdM_ksr1344Tf3WCjNUGboBX3CcLpfwhbENFDrAk4-xYRDRi_5zdBhtU_KOOgeCuETlt1jRiFZuU");
        $data=json_encode(array("to"=>"/topics/allDevices","data"=>array("title"=>"Get Journal", "message"=>"Jurnal Baru Telah di Publish!")));
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_exec($ch);
    }

    public function fileHandling(Request $req, $var){
        $file = $req->file($var);
        $filename = $file->getClientOriginalName();
        $extension = explode('.', $filename);
        $extension = end($extension);
        $filename = $this->generateRandomString().'.'.$extension;
        $file->move(public_path('uploads'), $filename);
        return $filename;
    }

    function generateRandomString($length = 10) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    public function update(Request $request){
        $posts = post::find($request->id);

        $posts->abstrak = $request->abstrak;
        $posts->judul = $request->judul;
        $posts->doi = $request->doi;
        if(!empty($request->file('file'))){
            $posts->file = $this->fileHandling($request, 'file');
        }
        $posts->update();
        $posts->update();
        return response()->json([
            'success' => true,
            'message' => 'post edited',
            'post'=> $posts
        ]);
    }
    
    public function delete(Request $request){
        $posts = post::find($request->id);

        if(Auth::user()->id != $posts->user_id){
            return response()->json([
                'success' => false,
                'message' => 'unautorized access'
            ]);
        }

        if($posts->file !=''){
            File::delete('uploads/'.$posts->file);
        }
        $posts->delete();
        return response()->json([
            'success' => true,
            'message' => 'post deleted'
        ]);
    }
    
    public function post(){
        $posts = post::orderBy('id','desc')->get();
        foreach($posts as $post){
            $post->user;
            
        }
        return response()->json([
            'success' => true,
            'post' => $posts
        ]);
    }

}
