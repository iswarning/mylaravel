<?php

namespace App\Http\Controllers\Backend\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Hash;
class UserController extends Controller
{
    
    /* Display List Products */
    public function index(Request $request)
    {
        $data = User::paginate(5);
        if($request->ajax()){
            return view('show',['users' => $data]);
        }
        return view('admin.user',compact('data'));
    }

    /* Display view store */
    public function viewStore(){
        return view('admin.user.add');
    }


    /* Add New User */
    public function store(Request $request)
    {
        $validator = $request->validate([
    		'name' => 'required|max:255',
    		'email' => 'required|unique:users',
    		'pass' => 'required|min:6|max:20'
		]);
		
        if(empty($request->role)){
            $role = 2;
        }else{
            $role = $request->role;
        }

        if($request->name == "admin"){
            return redirect()->back()->withErrors("Tên không hợp lệ");
        }
    	$data = User::create([
    		'name' => $request->name,
    		'email' => $request->email,
    		'password' => Hash::make($request->pass),
            'role' => $role
    	]);

    	if(!$data){
    		return redirect()->back()->withErrors($validator);
    	}
    	else{
            return redirect()->back()->withErrors('Add Success !');
    	}
    }

    /* Display User where id */
    public function show($id)
    {
        $data = DB::table('users')->find($id);
    	return view('admin.user.edit',['data'=>$data]);
    }

    
    /* Update User where id */
    public function update(Request $request, $id)
    {
        $validator = $request->validate([
    		'name' => 'required|max:255',
    		'email' => 'required',
    		'pass' => 'required|min:6'
    	]);

        if($request->name === "admin"){
            return redirect()->back()->withErorrs("Tên không hợp lệ");
        }
    	$data = DB::table('users')->where('id',$request->id)->update([
    		'name' => $request->name,
    		'email' => $request->email,
    		'password' => bcrypt($request->pass)
    	]);

    	if($data){
    		return Redirect::back()->withErorrs('Update Success !');
    	}
    	else{
    		return Redirect::back()->withErorrs($validator);
    	}
    }

    
    /* Delete User where id */
    public function destroy($id)
    {
        $data= User::find($id);
        if($data->role == 1 && $data->email == "admin@gmail.com"){
            return "Bạn không thể xóa admin";
        }
        $data->delete();
    	return back();
    }
}
