<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Redirect;
class EditController extends Controller
{
    public function edit($id){
    	$data = DB::table('users')->find($id);
    	return view('admin.user.edit',['data'=>$data]);
    }

    public function postEdit(Request $request)
    {
    	$validator = $request->validate([
    		'name' => 'required|max:255',
    		'email' => 'required',
    		'pass' => 'required|min:6'
    	],[
    		'name.required' => 'Name not empty',
    		'email.required' => 'Email not empty',
    		'pass.required' => 'Password not empty',
    		'name.max' => 'Name not exceed 255 character',
    		'pass.min' => 'Password have at least 6 character',
    	]);

        if($request->name === "admin"){
            return redirect()->back()->withErorrs("Tên không hợp lệ");
        }
    	$data = DB::table('users')->where('id',$request->id)->update([
    		'name' => $request->name,
    		'email' => $request->email,
    		'password' => bcrypt($request->pass)
    	]);

    	if($data){
    		return Redirect::back()->withErorrs('Update Success !');
    	}
    	else{
    		return Redirect::back()->withErorrs($validator);
    	}
    }
}
