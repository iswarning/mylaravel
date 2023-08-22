<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Message;
use App\Events\ChatEvent;
use Pusher\Pusher;
use App\TypeProduct;
use Illuminate\Support\Facades\Auth;
class ChatController extends Controller
{
    public function __construct(){
        $this->middleware('guest');
    }

    public function index()
    {
        $type = TypeProduct::all();
        $messages = Message::all();
        return view('chat',compact('messages','type'));
    }

    public function store(Request $request)
    {
        if($request->ajax())
        {
            $user = User::findOrFail(Auth::id());
            $message = $request->ajax_message;

            event(new ChatEvent($user,$message));

            $newMessage = new Message();
            $newMessage->message = $message;
            $newMessage->user_id = $user->id;
            $newMessage->is_read = 0;
            $newMessage->save();

            return $newMessage;
        }
            

    }

}
