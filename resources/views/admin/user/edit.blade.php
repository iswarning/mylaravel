@extends('admin.master')
@section('content')
<form method="POST" action="">
	{{ csrf_field() }}
  <div class="content-wrapper">
  	<div class="container-fluid">
  		@if($errors->any())
  		@foreach($errors->all() as $er)
        <div class="alert alert-danger">{{$er}}</div>
        @endforeach
      @endif	
	  <div class="form-group">
	    <label for="email">Name:</label>
	    <input type="text" class="form-control" name="name" id="email" value="{{$data->name}}">
	  </div>
	  <div class="form-group">
	    <label for="pwd">Email:</label>
	    <input type="email" class="form-control" name="email" id="pwd" value="{{$data->email}}">
	  </div>
	  <div class="form-group">
	    <label for="pr">Password:</label>
	    <input type="password" class="form-control" name="pass" id="pr" value="{{$data->password}}">
	  </div>
	  

	  <button type="submit" class="btn btn-default">Update</button>
	  <input action="action" onclick="window.history.go(-1); return false;" type="submit" value="Cancel"/>
	</div>
</div>
</form>
@endsection