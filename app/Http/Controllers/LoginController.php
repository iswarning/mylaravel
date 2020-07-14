<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
class LoginController extends Controller
{


    public function Login(){
    	return view('login');
    }

    public function postLogin(Request $request){
    	$log = [
			'email'=>$request->email,
			'password'=>$request->password
    	];
    	if(Auth::attempt($log))
    	{
            if(Auth::user()->email == "admin@gmail.com")
                return redirect('admin/dashboard');
            else
                return redirect('home');
    	}
    	else{
    		return view('login');
    	}
    }

    
}
