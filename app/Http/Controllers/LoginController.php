<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Hash, Socialite;
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

    public function logout(){
        Auth::logout();
        return redirect()->guest('home');
    }

    public function register(){
        return view('register');
    }

    public function postRegister(Request $request)
    {
        if($request->repassword != $request->password){
            return back()->with('<script>alert("Password invalid")</script>');
        }

        $register = new User();
        $register->name = $request->text;
        $register->email = $request->email;
        $register->password = Hash::make($request->password);
        $register->save();

        return view('login');
    }

    // Login with FaceBook
    public function redirect($provider){
        return Socialite::driver($provider)->redirect();
    }

    
    public function callback($provider){
        $getInfo = Socialite::driver($provider)->user();
        $user = $this->createUser($getInfo,$provider);
        auth()->login($user);
        return redirect()->to('/home');
    }
    function createUser($getInfo,$provider){
        $user = User::where('provider_id',$getInfo->id)->first();
        if(!$user){
            $user = new User();
            $user->name = $getInfo->name;
            $user->email = $getInfo->email;
            $user->provider = $provider;
            $user->provider_id = $getInfo->id;
            $user->save();
        }
        return $user;
    }
}
