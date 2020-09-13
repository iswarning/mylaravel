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

        @elseif(Auth::user()->role === 1)
        <li class="nav-item">
            <a class="nav-link" href="{{ url('admin/dashboard')}}"> Admin </a>
         </li>
         @if(App\Order::where('user_id',Auth::id())->first() !== null )
         <li class="nav-item">
           <a class="nav-link" href="{{ url('shoppingcart/history')}}"> Order history </a>
        </li>
        @endif
         <li class="nav-item">
            <a class="nav-link" href="{{ url('logout')}}"> Logout </a>
         </li>
         @else

         <li class="nav-item">
            <a class="nav-link" href="{{ url('chat')}}"> Chat Room </a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="{{ url('shoppingcart/history')}}"> Order history </a>
        </li>
        <li class="nav-item">
           <a class="nav-link" href="{{ url('logout')}}"> Logout </a>
        </li>

        @endif

        <li class="nav-item">
          <a class="nav-link" href="{{ url('shoppingcart/list')}}"><i class='fa fa-shopping-cart'></i>({{Cart::count()}})</a>
        </li>
        <li class="nav-item">

        </li>
      </ul>
        </div>
    </nav>
@if(\Route::current()->getName() == "home")
  <div id="demo" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        @foreach($slide as $key => $s)
        <div class="carousel-item
          @if($key === 0) active @endif
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

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class='container'>
            <a class="navbar-brand" href="{{ url('home') }}">Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">


            @foreach($menus as $row)
                <li class="nav-item" style='padding:5px;'>
                    <a class="nav-link" href="{{ url('product/cate/'.$row->id) }}"> {{ $row->name }} </a>
                </li>
            @endforeach

              </ul>
              <form method="POST" class="form-inline my-2 my-lg-0" action="{{ url('product/search') }}">
                @csrf
                <input class="form-control mr-sm-2 " type="search" placeholder="Search" name='textsearch' aria-label="Search" id='inputSearch' style='position:relative;display:inline-block;'>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
              
            </form>
            <span id='showSearch' style="position: absolute;background-color: white;width:300px;max-width: 500px;z-index:99;"></span>

        </div>
    </div>
</nav>

