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
	<div class="container">
		<form method="POST" action="">
			{{csrf_field()}}
			<h3>Order</h3><br>
			<div class="form-group">
				<label class="title">Name: </label>
				<span> {{$user->name}} </span>
			</div>
			<div class="form-group">
				<label class="title">Email: </label>
				<span> {{$user->email}} </span>
			</div>

			
			<label class="title">List:</label><br>
			@foreach($cart as $c)
			<div class="form-group list">				
				<span><img src="{{asset($c->options->img)}}" width="40px" height="40px"></span>
				<span>{{$c->name}}</span>
				<span>{{$c->price}}</span>
				<span>{{$c->qty}}</span><br>
			</div>
			@endforeach
			

			<div class="form-group">
				<label class="title">Payment:</label><br>
				<input id="offline" type="radio" name="pay" value="offline" checked>
				<label for='offline'> Offline </label><br>
				<input id="paypal" type="radio" name="pay" value="paypal">
				<label for='paypal'> Paypal </label><br>
				<input id="atm" type="radio" name="pay" value="atm">
				<label for='atm'> ATM </label><br>
				<input id="visa" type="radio" name="pay" value="visa">
				<label for='visa'> Visa </label><br>
			</div>

			<div class="form-group" id="form_off">
				<label class="title">Street Address: </label>
				<textarea rows="2" name="position"></textarea>
			</div>

			<div class="form-group">
				<label class="title">Note: </label>
				<textarea rows="4" name="note"></textarea>
			</div>
			<div class="form-group" style="float: right;">
				<label style="font-size: 20px;color: red;">Total: </label>
				<span> {{Cart::priceTotal()}} </span>
			</div>
			<br>
			<button type="submit" class="btn btn-danger"> Order </button>
		</form>
	</div>
@endsection