<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Product;
use App\User;
class DashBoardController extends Controller
{
    public function index(Request $request)
    {
        $listP = Product::paginate(5);
        if($request->ajax()){
    	    return view('admin.dashboard',compact('listP'))->render();
        }
        return view('admin.dashboard',compact('listP'));
    }
}
