<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class RegisterController extends Controller
{
     /*
     * Register api
     * @return \Illuminate\Http\Response
     */
    public function Register(Request $request)
    {

      
        $validator = Validator::make($request->all(), [
            'firstname' => 'required|max:255',
            'lastname' => 'required|max:255',
            'email' => 'required|unique:users|email|max:255',
            'password' => 'required|max:255',
            'mobileno' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:9|max:10',
            'c_password' => 'required|same:password',
            'userphoto' => 'required|image|mimes:jpg,png,gif|max:2048',

        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        if(isset($request->userphoto) && $request->userphoto ){

            $filename = time().'__'.$request->userphoto->getClientOriginalName();
            $path = public_path().'/upload/';
            $request->userphoto->move($path,$filename);
            $input['userphoto'] = $filename;
        }
        $user = User::create($input);
        $success['token'] =  $user->createToken($user->firstname .' '. $user->lastname)->accessToken; 
        $success['name'] =  $user->firstname;
   
        return $this->sendResponse($success, 'User register successfully.');
    }
}
