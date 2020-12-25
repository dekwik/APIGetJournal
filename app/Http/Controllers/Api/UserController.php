<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use Hash;
use Exception;
use Tymon\JWTAuth\facades\JWTAuth;


class UserController extends Controller
{
    public function read(Request $request){
        // AMBIL USER
        $user = User::find(Auth::user()->id);
        return response()->json([
            'success' => true,
            'user' => $user
        ]);
    }

    public function edit(Request $request){
        $user = User::find(Auth::user()->id);

        $user->name = $request->name;
        $user->lastname = $request->lastname;
        $user->email = $request->email;
        $photo = '';
        if($request->photo!=''){
            $photo = time().'.jpg';
            file_put_contents('storage/profiles/'.$photo,base64_decode($request->photo));
            $user->photo = $photo;
        }
        $user->update();

        return response()->json([
            'success' => true,
            'user' => $user
        ]);
    }

    public function editPass(Request $request){
        $user = User::find(Auth::user()->id);

        $savedPass = $user->password;
        $getPass = $request->password;
        $newPass = Hash::make($request->newPass);
        if(Hash::check($getPass, $savedPass)){
            $user->password = $newPass;
            $user->save();
            return response()->json([
                'success' => true
            ]);
        }else{
            return response()->json([
                'success' => false
            ]);
        }
    } 
}
