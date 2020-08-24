<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notifications\TestNotification;
use App\User;
use Pusher\Pusher;
use App\Notification;
use Auth;
class SendNotification extends Controller
{
    public function index()
    {
        $notify = Auth::user()->notifications;
        return view('admin.notification.list',compact('notify'));
    }

    public function store($title, $content)
    {
        $user = User::find(1);
        $data = ['title' => $title, 'content' => $content];
        $user->notify(new TestNotification($data));

        $options = array(
            'cluster' => 'ap1',
            'encrypted' => true
        );

        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );

        $pusher->trigger('NotificationEvent', 'send-message', $data);
    }
}
