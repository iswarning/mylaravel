@extends('layout.master')
@section('content')
    <div class="row">
        <div class='col-md-12 form-group' style="margin:10px;">
        <form method="POST" action="{{ route('postCheck') }}">
            @csrf

            <div class='list-group'>
                <h3>Brand</h3>
                <div class='list-group-item checkbox'>
                    <label>
                        <input type='checkbox' class='common_selector brand' value='Apple' name='brand[]'>
                        Apple
                    </label>
                </div>
                <div class='list-group-item checkbox'>
                    <label>
                        <input type='checkbox' class='common_selector brand' value='Samsung' name='brand[]'>
                        Samsung
                    </label>
                </div>
                <div class='list-group-item checkbox'>
                    <label>
                        <input type='checkbox' class='common_selector brand' value='Oppo' name='brand[]'>
                        Oppo
                    </label>
                </div>
                <div class='list-group-item checkbox'>
                    <label>
                        <input type='checkbox' class='common_selector brand' value='Xiaomi' name='brand[]'>
                        Xiaomi
                    </label>
                </div>
            </div><br/>

            <div class='list-group'>
                <h3>Price</h3>
                <div class='list-group-item checkbox'>
                    <label>
                        <input type='checkbox' class='common_selector brand' value='0-2' name='price[]'>
                        Duoi 2 trieu
                    </label>
                </div>
                <div class='list-group-item checkbox'>
                    <label>
                        <input type='checkbox' class='common_selector brand' value='5-10' name='price[]'>
                        Tu 5 den 10 trieu
                    </label>
                </div>

            </div>

            <br/>
            <button type="submit" id='find' class='btn btn-outline-primary'>Find</button>
        </form>
        </div>
    </div>



@endsection

