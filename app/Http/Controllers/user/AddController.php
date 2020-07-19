<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Redirect;
use Hash;
class AddController extends Controller
{
	public function add(){
		return view('admin.user.add');
	}
    public function postAdd(Request $request)
    {
    	$validator = $request->validate([
    		'name' => 'required|max:255',
    		'email' => 'required|unique:users',
    		'pass' => 'required|min:6|max:20'
    	],[
    		'name.required' => 'Name not empty',
    		'email.required' => 'Email not empty',
    		'pass.required' => 'Password not empty',
    		'name.max' => 'Name not exceed 255 character',
    		'email.unique' => 'Email already exist',
    		'pass.min' => 'Password have at least 6 character',
    		'pass.max' => 'Name not exceed 255 character'
    	]);

    	$data = User::create([
    		'name' => $request->name,
    		'email' => $request->email,
    		'password' => Hash::make($request->pass)
    	]);

    	if($data){
    		return Redirect::back()->withErorrs('Add Success !');
    	}
    	else{
    		return Redirect::back()->withErorrs($validator);
    	}
    }
}
