@extends('admin.layout.app')
@section('content')
<div class="content-wrapper">
    <div class="container-fluid">
        <post-component user_id="{{Auth::id()}}"></post-component>
    </div>
</div>

@endsection