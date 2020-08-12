<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Message;
use Auth;
class ChatController extends Controller
{
	public function __construct(){
		$this->middleware('auth');
	}

    public function getMessage(){
    	return Message::with('user')->get();
    }

    public function sendMessage(Request $request){
    	$user = Auth::user();

    	$message = $user->messages()->create([
    		'message' => $request->input('message')
    	]);

    	broadcast(new MessageSent($user,$message))->toOthers();

    	return ['status' => 'Message Sent!'];
    }
}
