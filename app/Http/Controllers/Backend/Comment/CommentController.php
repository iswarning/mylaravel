<?php

namespace App\Http\Controllers\Backend\Comment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Comment;
class CommentController extends Controller
{
    /* Display List Comments */
    public function index()
    {
    	$comment = Comment::orderBy('id','DESC')->paginate(5);
    	return view('admin.comment.list',compact('comment'));
    }

    /* Delete Comment where id */
    public function destroy($id)
    {
    	$data = Comment::find($id);
    	$data->delete();
    	return back();
    }
}
