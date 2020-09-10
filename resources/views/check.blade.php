@extends('layout.master')
@section('content')
    <div class="row">
        <div class='col-md-12 form-group' style="margin:10px;">
        <form method="POST" action="{{ route('postCheck') }}">
            @csrf
            <select name='cate' id='cate'>
                <option value='0' selected>Trademark</option>
                <option value='apple'>Apple</option>
                <option value='samsung'>Samsung</option>
            </select>

            <select name='price' id='price'>
                <option value='0' selected>Price</option>
                <option value='0-2'>Under 2 millions</option>
                <option value='2-5'>Between 2 to 5 millions</option>
                <option value='5-10'>Between 5 to 10 millions</option>
                <option value='10-'>Over 10 millions</option>
            </select>

            <select name='sort' id='sort'>
                <option value='0' selected>Sort by</option>
                <option value='desc'>Desc Price</option>
                <option value='asc'>Asc Price</option>
            </select>
            <button type="submit" id='find'>Find</button>
        </form>
        </div>
    </div>
<div id='show'>
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
</div>


@endsection

