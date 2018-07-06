@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Type</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="type/new"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
</div>

<table id=example width="100%" class="table">
<thead>
    <tr>
        <th>Type</th>
        <th>Note</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach($datas as $data)
    <tr>
        <td>{{ $data->type }}</td>
        <td>{{ $data->note }}</td>
        <td align="center">
            <button class="btn btn-danger" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
            <a href="{{ url('type/edit') }}" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span></a>
        </td>
    </tr>
    @endforeach
</tbody>
</table>

<!-- Modal -->

@endsection