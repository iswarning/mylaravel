<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\DB;
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
            if(Auth::user()->role === 1)
                return redirect('admin/products');
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
            return "Password invalid";
        }

        $validated = $request->validate([
            'email' => 'unique:users'
        ],[
            'email.unique' => 'Email đã tồn tại'
        ]);

        if($request->text === "admin"){
            return "Tên không hợp lệ";
        }

        $register = new User();
        $register->name = $request->text;
        $register->email = $request->email;
        $register->password = bcrypt($request->password);
        $register->role = 2;
        $register->save();

        $last_id = DB::getPdo()->lastInsertId();
        $last_user = User::find($last_id);

        if($register){

            /* Thông báo tạo user mới */
            app('App\Http\Controllers\Backend\Notification\SendNotification')->store('New Users',$last_user->email);
            return dd("Đăng ký thành công");
        }else{
            return $validated;
        }
    }

    // Login with FaceBook & Google
    public function redirect($provider){
        return Socialite::driver($provider)->redirect();
    }


    public function callback($provider){
        $getInfo = Socialite::driver($provider)->user();
        $user = $this->createUser($getInfo,$provider);
        Auth::login($user);
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
            $user->role = 2;
            $user->save();

            /* Thông báo tạo user mới */
            // app('App\Http\Controllers\Backend\Notification\SendNotification')->store('New '.$provider.' Users',$last_user->email);
        }
        return $user;
    }
}
