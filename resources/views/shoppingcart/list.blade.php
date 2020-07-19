@extends('layout.master')
	<title>@section('title','Shopping Cart')</title>
  @section('link')
	   <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <meta name="description" content="">
	  <meta name="author" content="">
	  <!-- Bootstrap core CSS-->
	  <link href="{{ asset('vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
	  <!-- Custom fonts for this template-->
	  <link href="{{ asset('vendor/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
	  <!-- Page level plugin CSS-->
	  <link href="{{ asset('vendor/datatables/dataTables.bootstrap4.css')}}" rel="stylesheet">
	  <!-- Custom styles for this template-->
	  <link href="{{ asset('css/sb-admin.css')}}" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    @endsection

	@section('content')
	<div class="card mb-3" style="margin-top: 100px;">
        <div class="card-header">
          <i class="fa fa-table"></i> Shopping Cart</div>
        <div class="card-body">
          <div class="table-responsive">
          	
              
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Image</th>
                  <th>Name</th>
                  <th>Quantity</th>
                  <th>Price</th>
                  <th>All Price</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
              	
              	@foreach($cart as $c)
                  
              	<form method="POST" action="{{url('shoppingcart/update/'.$c->rowId)}}">
                {{csrf_field()}}
                <tr>
              		<td><p name='idpro'>{{$c->id}}</p></td>
              		<td><img src="{{asset($c->options->img)}}" width="40px" height="40px"></td>
              		<td>{{$c->name}}</td>
              		<td><input type="text" name="qty" id="qty" value="{{$c->qty}}"></td>
              		<td>{{number_format($c->price)}}</td>
              		<td>{{number_format($c->price*$c->qty)}}</td>
              		<td>
              			<button type="submit" class="btn btn-link" id="up">Update</button>/
              			<a href="{{url('shoppingcart/delete/'.$c->rowId)}}">Delete</a>
              		</td>
              		<input type="hidden" name="rowId" id="rowId" value="{{$c->rowId}}">
              	</tr>
              </form>
              	@endforeach 

            </tbody>
            </table>
            <div class="form-group" style="float: right;">
              <label style="font-size: 20px;color: red;">Total: </label>
              <span> {{Cart::priceTotal()}} </span>
            </div>
            <a href="{{url('order')}}"> Order </a>
        
            
          </div>
        </div>
      </div>
      @endsection
      !-- Bootstrap core JavaScript-->

      @section('script')
        <script type="text/javascript">
          $(document).ready(function(){
            $('#up').on('click',function(){
              var  row = $('#rowId').val();
              $.post('shoppingcart/update/'+row,function(data){
                $('#qty').html(data);
              });
            });
          });
        </script>
      @endsection