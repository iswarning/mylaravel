@extends('admin.layout.app')
<!DOCTYPE html>
<html lang="en">

<head>
  <title>SB Admin - Start Bootstrap Template</title>
</head>
<body>
  <!-- Navigation-->
@section('content')
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">My Dashboard</li>
      </ol>
      
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Data Table Example</div>
        <div class="card-body">
          <div class="table-responsive">
          <div id='showData'>
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
              	@foreach($data as $row)
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
          </div>
            <div>
            	<a href="{{asset('admin/user/add')}}">Add Users</a>
            </div>
            <div style="float: right;">
            	{{ $data->links() }}
            </div>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2018</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    
  </div>
  @endsection
</body>

</html>
