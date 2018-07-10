@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Part</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="{{ url('asset/part/new') }}"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
</div>

<table id="example" width="100%" class="table">
<thead>
    <tr>
        <th>Item</th>
        <th>Type</th>
        <th>Note</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach($datas as $data)
    <tr id="{{ $data->id }}">
        <td>{{$data->in_no }}</td>
        <td>{{ $data->type_id }}</td>
        <td>{{ $data->note }}</td>
        <td align="center">
            <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
            <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
        </td>
    </tr>
    @endforeach
</tbody>
</table>

@endsection