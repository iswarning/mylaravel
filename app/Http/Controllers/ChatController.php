<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Message;
use Auth;
use App\Events\ChatEvent;
use Pusher\Pusher;
use App\TypeProduct;
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

            $user = User::findOrFail(Auth::id());
            $message = $request->message;

            event(new ChatEvent($user,$message));

            $newMessage = new Message();
            $newMessage->message = $message;
            $newMessage->user_id = $user->id;
            $newMessage->is_read = 0;
            $newMessage->save();

            return back();

    }

}
