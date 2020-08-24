@extends('admin.master')
@section('content')
<div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Product</li>
      </ol>

      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Data Table Products</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>Title</th>
                  <th>Content</th>
                  <th>Read At</th>
                  <th>Created At</th>
                </tr>
              </thead>
              <tbody>
              	@foreach($notify as $row)
                <tr>
                  <td>{{$row->data['title']}}</td>
                  <td>{{$row->data['content']}}</td>
                  @if(empty($row->read_at))
                  <td>Chưa xem</td>
                  @else
                  <td>{{$row->read_at}}</td>
                  @endif
                  <td>{{ date($row->created_at) }}</td>
                </tr>
                @endforeach
         		</tbody>
            </table>
            <div style="float: right;">

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
@endsection
