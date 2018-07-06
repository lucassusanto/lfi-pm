@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Type</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="asset/new"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
</div>

<table id=example width="100%" class="table">
    <thead>
        <tr>
            <th>Asset No</th>
            <th>Type</th>
            <th>Asset Status</th>
            <th>Asset Category</th>
            <th>Note</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>100-001</td>
            <td>100</td>
            <td>In service</td>
            <td>Location</td>
            <td>Office area</td>
            <td align="center">
                <button class="btn btn-danger" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                <a href="{{ url('asset/edit') }}" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span></a>
            </td>
        </tr>
    </tbody>
    <tfoot></tfoot>
</table>
@endsection