@if(isset($data))

<div class='row' >
    <div class='col-md-12'>
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Trademark</th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $row)
                <tr>
                    <td>{{ $row->TenSanPham }}</td>
                    <td>{{ number_format($row->Gia) }}</td>
                    <td>{{ $row->HangSanXuat }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@elseif(isset($comment))


<div class="row rowComment">
    <hr>
    <div class="col-md-2">
        <img src="{{asset('image/avatar-default.jpg')}}" width="40px" height="40px">
    </div>
    <div class="col-md-8">
        <h5><b>{{$comment->email_user}}</b></h5>
        <p>{{$comment->content}}</p>
    </div>
    <div class="col-md-2">
        {{Carbon\Carbon::parse($comment->created_at)->diffForHumans()}}
        <br><a href="#" onclick="reply()" id="clickme">Reply</a>
    </div>
</div>

@elseif(isset($listP))

<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
    <tr>
        <th>ID</th>
        <th>Cate</th>
        <th>Name</th>
        <th>Price</th>
        <th>Image</th>
        <th>Image1</th>
        <th>Image2</th>
        <th>Producer</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    
    @foreach($listP as $row)
    <tr>
        <td>{{$row->id}}</td>
        <td>{{$row->MaLoai}}</td>
        <td>{{$row->TenSanPham}}</td>
        <td>{{number_format($row->Gia)}}</td>
        <td><img src="{{asset($row->HinhAnh)}}" width="40px" height="40px"></td>
        <td><img src="{{asset($row->HinhCT1)}}" width="40px" height="40px"></td>
        <td><img src="{{asset($row->HinhCT2)}}" width="40px" height="40px"></td>
        <td>{{$row->HangSanXuat}}</td>
        <td>
        <a href="{{ url('admin/product/edit/'.$row->id) }}">Edit</a>
        /<a href="{{ url('admin/product/delete/'.$row->id) }}" onclick="return ConfirmDelete();">Delete</a></td>
    </tr>
    @endforeach
    
    </tbody>
</table>

@elseif(isset($users))

<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Provider</th>
        <th>Role</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    @foreach($users as $row)
    <tr>
        <td>{{$row->id}}</td>
        <td>{{$row->name}}</td>
        <td>{{$row->email}}</td>
        <td>{{$row->provider}}</td>
        <td>{{$row->role}}</td>
        <td>
        <a href="user/edit/{{$row->id}}">Edit</a>/<a href="user/delete/{{$row->id}}" onclick="return ConfirmDelete();">Delete</a></td>
        </tr>
    @endforeach
    </tbody>
</table>

@endif

