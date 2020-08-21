@extends('layout.master')

@section('link')
<link rel="shortcut icon" type="image/png" href="image/ico.png"/>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}">
    <!-- jQuery library -->
    <script src="js/jquery-3.3.1.min.js"></script>

    <!-- Popper JS -->
    <script src="js/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>

    <link href="css/sb-admin.css" rel="stylesheet">
    <base href="{{asset('')}}">
    <style type="text/css">
    	.list span{
    		margin:10px;
    	}
    	.title{
    		color:blue;
    		font-size: 18px;
    	}
    </style>
@endsection

@section('content')
		<div class="row">
			<div class="col-md-5">
				<form method="POST" action="">
					{{csrf_field()}}
					<h3 style="color: red;margin-top: 50px;"> Checkout Information </h3><br>

					<div class="form-group">
						<label class="title">Name: </label>
						<input type="text" name="name" class="form-control" value="{{$user->name}}" readonly>
					</div>

					<div class="form-group">
						<label class="title">Email: </label>
						<input type="text" name="email" class="form-control" value="{{$user->email}}" readonly>
					</div>

					<div class="form-group">
						<label class="title">Company Name: </label>
						<input type="text" name="company" class="form-control" >
					</div>

					<div class="form-group">
						<label class="title">Position: </label>
						<textarea class="form-control"></textarea>
					</div>
					
					<hr>
					<h4>List Cart:</h4><br>
		<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>Image</th>
              <th>Name</th>
              <th>Price</th>
              <th>Quantity</th>
            </tr>
          </thead>
          <tbody>
          	@foreach($cart as $c)
          	<tr>
	          	<td><img src="{{asset($c->options->img)}}" width="40px" height="40px"></td>
	          	<td>{{$c->name}}</td>
	          	<td>{{$c->price}}</td>
	          	<td>{{$c->qty}}</td>
	          </tr>
	          @endforeach
          </tbody>
      </table>
					
					<hr>
					<h4>Payment:</h4><br>
					<div class="form-group">
						<input  id="offline" type="radio" name="pay" value="offline" checked>
						<label for='offline'> Offline </label><br>
						<input  id="paypal" type="radio" name="pay" value="paypal">
						<label for='paypal'> Paypal </label><br>
						<input  id="atm" type="radio" name="pay" value="atm">
						<label for='atm'> ATM </label><br>
						<input  id="visa" type="radio" name="pay" value="visa">
						<label for='visa'> Visa </label><br>
					</div>

					<div class="form-group" style="float: right;">
						<label style="font-size: 20px;color: red;">Total: </label>
						<span> {{Cart::priceTotal()}} </span>
					</div>
					<br>
					<button type="submit" class="btn btn-danger"> Order </button>
				</form>
			</div>	
		</div>
@endsection