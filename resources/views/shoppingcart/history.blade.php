@extends('layout.master')

@section('content')
@for($i = 0;$i < count($data); $i++)
<div class='row'>
    <div class='col-md-12'><hr>
        <h3>Order {{ $i }}</h3>
    </div>

    @foreach($data[$i] as $row)
        <div class='col-md-3'>
            <img src="{{ asset(App\Product::find($row->product_id)->HinhAnh) }}" width='40px' height='40px'>
        </div>
        <div class='col-md-3'>
            {{ $row->product_name }}
        </div>
        <div class='col-md-3'>
            {{ $row->quantity }}
        </div>
        <div class='col-md-3'>
            {{ number_format($row->price) }}
        </div>
    @endforeach
    <br/>
    <div style="font-weight: bold;">Total: {{ number_format(App\Order::find($row->order_id)->total_amount) }}</div>
</div>
@endfor
@endsection
