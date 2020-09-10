@extends('layout.master')
@section('content')

<div class="row">

    @foreach($search as $row)
    <form action="{{url('shoppingcart/add/'.$row->id)}}" method="POST">
      {!! csrf_field() !!}
      <div class="col-md-3" style="margin: 10px 0;">
        <div class="card" style="width: 15.9rem;">
         <img class="card-img-top" src="{!! asset($row->HinhAnh) !!}" alt="" width="254" height="292">
         <div class="card-body">
            <h5 class="card-title">{!! $row->TenSanPham !!}</h5>
            <h6 class="card-text">{!! number_format($row->Gia) !!}đ</h6>
            <a href="{{ url('product/detail/'.$row->id)}}" class="btn btn-primary">Xem chi tiết</a>
            <button type="submit" class="btn btn-success">Add to <i class="fa fa-shopping-cart"></i></button>
         </div>
      </div>
    </div>
    </form>
    @endforeach
</div>
@endsection
