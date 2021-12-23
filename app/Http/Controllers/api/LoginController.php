<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Validator;

class LoginController extends Controller
{
     /*Login api */
     public function Login(Request $request)
     {
     
        
         if(Auth::attempt(['email' => $request->email, 'password' => $request->password,'status' => 'Active'])){ 
             $user = Auth::user(); 
             $success['token'] =  $user->createToken($user->firstname .' '. $user->lastname)->accessToken; 
             $success['name'] =  $user->firstname .' '. $user->lastname;
    
             return $this->sendResponse($success, 'User login successfully.');
         } 
         else{ 
             return $this->sendError('Unauthorised.', ['error'=>'Unauthorised']);
         } 
     }
}
