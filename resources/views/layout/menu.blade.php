<nav class="navbar navbar-expand-sm bg-light navbar-light">
        <div class="container">
      <a class="navbar-brand" href="{{ url('home')}}" >
        <img src="{{ asset('image/logo4.png')}}" alt="Logo" width="200px" height="50px">
      </a>
      <ul class="navbar-nav">
        @if(!Auth::check())
        <li class="nav-item">
           <a class="nav-link" href="{{ url('login')}}"> Login </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{ url('register')}}"> Register </a>
        </li>

        @else
        <li class="nav-item">
           <a class="nav-link" href="{{ url('logout')}}"> Logout </a>
        </li>

        @endif

        <li class="nav-item">
          <a class="nav-link" href="{{ url('shoppingcart/list')}}">Shopping Cart({{Cart::count()}})</a>
        </li>
        <li class="nav-item">

        </li>
      </ul>
        </div>
    </nav>
@if(\Route::current()->getName() == "home")
  <div id="demo" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        @foreach($slide as $s)
        <div class="carousel-item
          <?php if($s->id == 1) echo 'active'; ?>
        ">
          <a  href="#"><img class="img-fluid" src="{{asset($s->src)}}" alt="{{$s->alt}}" width="100%" height="100%"></a>
        </div>
        @endforeach

        <a class="carousel-control-prev" href="#demo" data-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
          <span class="carousel-control-next-icon"></span>
        </a>
      </div>
    </div>
@endif
<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <div class="container">
  <ul class="navbar-nav">
        @foreach($menu as $menu)
          <li class="nav-item" style="padding: 5px">
            <a class="nav-link" href="{{url('product/cate/'.$menu->id)}}"> {!! $menu->name !!} </a>
          </li>
          @endforeach
      <li class="nav-item" style="padding: 5px">
          <a class="nav-link" href=""> Đồng hồ thông minh </a>
        </li>
        <li class="nav-item" style="padding: 5px">
          <a class="nav-link" href=""> Máy cũ giá rẻ </a>
        </li>
        <li class="nav-item" style="padding: 5px">
          <a class="nav-link" href=""> Sim, Thẻ cào </a>
        </li>
  </ul>
  <form method="POST" class="form-inline " action="/action_page.php">
      <input class="form-control mr-sm-2" type="text" placeholder="Search for...">
      <button class="btn btn-success" type="submit">Search</button>
    </form>
  </div>
</nav>


