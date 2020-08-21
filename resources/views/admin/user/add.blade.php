@extends('admin.master')
@section('content')
<form method="POST" action="">
	{{ csrf_field() }}
	
<div class="content-wrapper">
  	<div class="container-fluid">
  		@if($errors->any())
        <div class="alert alert-danger">{{$errors->first()}}</div>
      @endif
		
	  <div class="form-group">
	    <label for="email">Name:</label>
	    <input type="text" class="form-control" name="name" id="email">
	  </div>
	  <div class="form-group">
	    <label for="pwd">Email:</label>
	    <input type="email" class="form-control" name="email" id="pwd">
	  </div>
	  <div class="form-group">
	    <label for="pr">Password:</label>
	    <input type="password" class="form-control" name="pass" id="pr">
	  </div>
	  <div class="form-group">
	    <label for="pr">Role:</label>
	    <input type="number" class="form-control" name="role">
	  </div>
	  <button type="submit" class="btn btn-default">Add</button>
	  <input action="action" onclick="window.history.go(-1); return false;" type="submit" value="Cancel"/>
	</div>
</div>
</form>
@endsection