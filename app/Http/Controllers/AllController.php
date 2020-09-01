<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
class AllController extends Controller
{
    public function AjaxPagination(Request $request)
    {
        $data = Comment::paginate(5);
        if($request->ajax()){
            return response()->json($data);
        }
    }
}
