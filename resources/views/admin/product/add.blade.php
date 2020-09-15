@extends('admin.layout.app')
@section('content')
<form method="POST" action="" enctype="multipart/form-data">
	{{ csrf_field() }}

<div class="content-wrapper">
  	<div class="container-fluid">
  		@if($errors->any())
	        @foreach ($errors->all() as $error)
		        <div class="alert alert-danger">{{ $error }}</div>
		    @endforeach
      @endif
	<div class="form-group">
	<label for="email">Chọn Loại Sản Phẩm:</label><br>
	@foreach($cate as $c)
	<label class="radio-inline"><input type="radio" name="optradio" value="{{$c->id}}"
		<?php if($c->id == 1) { echo "checked";} ?>
		> {{$c->name}} </label>
	@endforeach
	</div>

	  <div class="form-group">
	    <label for="email">Tên Sản Phẩm:</label>
	    <input type="text" class="form-control" name="name" id="email">
	  </div>
	  <div class="form-group">
	    <label for="pwd">Mô Tả:</label>
	    <textarea rows="3" class="form-control" name="mota" id="pwd"></textarea>
	  </div>
	  <div class="form-group">
	    <label for="pr">Giá:</label>
	    <input type="text" class="form-control" name="price" id="pr">
	  </div>
	  <div class="form-group">
	    <label for="img0">HìnhCT0:</label>
        <img src='#' id='showImg0' width='40px' height='40px'/>
	    <input type="file" name="img0" id="img0">
	  </div>
      <div class="form-group">
	    <label for="img1">HìnhCT1:</label>
        <img src='#' id='showImg1' width='40px' height='40px'>
	    <input type="file" name="img1" id="img1">
	  </div>
      <div class="form-group">
	    <label for="img2">HìnhCT2:</label>
        <img src='#' id='showImg2' width='40px' height='40px'>
	    <input type="file" name="img2" id="img2">
	  </div>
	  <div class="form-group">
	    <label for="pa">Hãng Sản Xuất:</label>
	    <input type="text" class="form-control" name="pa" id="pa">
	  </div>
	  <button type="submit" class="btn btn-default">Add</button>
	  <input action="action" onclick="window.history.go(-1); return false;" type="submit" value="Cancel"/>
	</div>
</div>
</form>
@endsection
