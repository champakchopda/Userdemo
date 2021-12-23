<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use File;
use DB;

class UserController extends Controller
{

    /** All user get (only can superadmin) */
    public function Getuserdata(){
        
        $user = Auth::user()->type;
        if($user == 1){
            $userdata = User::where(['type'=>0,'status'=>'Active'])->get();
        if($userdata){
            return $this->sendResponse($userdata, 'User data get successfully.');
        }else{
            return $this->sendResponse('Not Found', 'Sorry Data not found.');
        }
        }else{
            return $this->sendError('Unauthorised.', 'sorry you are not authorised');
        }
    }

    /**  User data updated (only can super Admin) */
    public function Userupdate(Request $request,$id){

        if(Auth::user()->type == 1){
            $validator = Validator::make($request->all(), [
                'firstname' => 'required|max:255',
                'lastname' => 'required|max:255',
                'email' => 'required|unique:users|email|max:255,'.$id,
                'password' => 'required|max:255',
                'mobileno' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|min:9|max:10',
                'c_password' => 'required|same:password',
                'userphoto' => 'required|image|mimes:jpg,gif|max:2048',
            ]);
       
            if($validator->fails()){
                return $this->sendError('Validation Error.', $validator->errors());       
            }
            $request->request->remove('c_password');
            $input = $request->all();
            $input['password'] = bcrypt($input['password']);
            $user = User::where('id',$id)->first();
            if(isset($request->userphoto) && $request->userphoto ){
                $destinationPath = public_path('/upload/'.$user->userphoto);
                $path = public_path().'/upload/';
                if(File::exists($destinationPath)){
                    unlink($path.$user->userphoto);
                }
                $filename = time().'__'.$request->userphoto->getClientOriginalName();
                $request->userphoto->move($path,$filename);
                $input['userphoto'] = $filename;
            }else{
                $input['userphoto'] = $$user->userphoto;
            }
            $userupdate = User::where('id',$id)->update($input);
            $updata = User::where('id',$id)->first();
            if($userupdate){
                return $this->sendResponse($updata, 'User updated successfully.');
            }else{
                return $this->sendResponse($userupdate, 'Sorry User not updated!.');
            }
        }else{
            return $this->sendError('Unauthorised.', ['error'=>'Sorry you are not athorised person.']);
        }
        

    }

    /**User Hobbies Update */
    public function Userhobbyupdate(Request $request){

        $validator = Validator::make($request->all(), [
            'hobby' => 'required|max:255',
        ]);
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
        $user = Auth::user()->id;
        $hobbyupdate = user::where('id',Auth::user()->id)->update(['hobby'=>$request->hobby]);
        $updata = User::where('id',Auth::user()->id)->first();
        if($hobbyupdate){
            return $this->sendResponse($updata, 'User hobby updated successfully!');
        }else{
            return $this->sendError('User has not update hobby', '');
        }

        
    }

    /* User Delete  (only can super admin)*/
    public function Deleteuser($id)
    {

        if(Auth::user()->type == '1'){
            $userdelete =  User::destroy($id);
            if($userdelete){
                return $this->sendResponse('', 'User delete successfully!');
            }else{
                return $this->sendError('User has not delete!', '');
            }
        }
        return $this->sendError('Unauthorised.', ['error'=>'Sorry you are not athorised person.']);
        
    }

    /*record filter by hobby (only can Super admin) */

    public function Listingbyhobby(Request $request){
        
        $validator = Validator::make($request->all(), [
            'hobby' => 'required|max:255',
        ]);
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }

        if(Auth::user()->type == '1'){
            $search = $request->hobby; 
            $userdata = User::where('hobby', $request->hobby)->get();        
            if($userdata){
                return $this->sendResponse($userdata, 'Data get successfully!');
            }else{
                return $this->sendError('data not found!', '');
            }
        }
        return $this->sendError('Unauthorised.', ['error'=>'Sorry you are not athorised person.']);
    }
}
