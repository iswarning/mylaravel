<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\User;
class UserController extends Controller
{
	public function index()
	{
		$data = User::paginate(5); 
	    return view('admin.user',compact('data'));
	}
    public function delete($id)
    {
    	$data= User::find($id);
    	$data->delete();
    	return back();
    }
}
