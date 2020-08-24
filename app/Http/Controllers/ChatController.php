<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Message;
use Auth;
class ChatController extends Controller
{
    public function index(){
        return view('chat');
    }

    public function sendMessage(Request $request){
        $from = Auth::id();
        $to = $request->receiver_id;
        $message = $request->message;

        $data = new Message();
        $data->user_id = $to;
        $data->message = $message;
        $data->is_read = 0;
        $data->save();
    }
}
