@extends('admin.layout.app')
<!DOCTYPE html>
<html lang="en">

<head>
  <title>SB Admin - Start Bootstrap Template</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
        <li class="breadcrumb-item active">Comments</li>
      </ol>

      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Comments Data Table</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>ID_Product</th>
                  <th>UserName</th>
                  <th>Content</th>
                  <th>Post Lasted</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                @foreach($comment as $row)
                <tr>
                  <td>{{$row->id}}</td>
                  <td><a href="{{url('product/detail/'.$row->id_product)}}" name="id_product">{{$row->id_product}}</a></td>
                  <td>{{$row->email_user}}</td>
                  <td><p>{{$row->content}}</p></td>
                  <td>{{$row->created_at}}</td>
                  <td><a href="{{url('admin/comment/delete/'.$row->id)}}" onclick="return ConfirmDelete();">Delete</a></td>
                </tr>
                @endforeach
            </tbody>
            </table>
            <div style="float: right;">
              {{ $comment->links() }}
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
