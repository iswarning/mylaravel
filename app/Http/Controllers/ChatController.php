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


}
