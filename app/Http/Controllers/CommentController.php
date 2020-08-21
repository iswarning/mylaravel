<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
use Redirect;
class CommentController extends Controller
{
    public function index(){
    	$comment = Comment::orderBy('id','DESC')->paginate(5);
    	return view('admin.comment.list',compact('comment'));
    }

    public function delete($id){
    	$data = Comment::find($id);
    	$data->delete();
    	return back();
    }

    
}
