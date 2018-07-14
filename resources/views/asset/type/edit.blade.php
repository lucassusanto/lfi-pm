@extends('layouts.lfi')

@section('content')
<form class="form-horizontal" method="POST" action="{{ url('asset/type/commit_edit') }}">
    <input type="hidden" name="id" value="{{ $data->id }}">
    @csrf

    <div class="row">
        <div class="col-md-12">
            <h2 align="center">Edit Asset Type</h2>
        </div>
        <div class="col-md-4">
            <a class="btn btn-default" href="{{ url('asset/type') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
        </div>
        <div class="col-md-2 col-md-offset-6">
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
        </div>
    </div><br>

    <div class="form-group">
        <label class="control-label col-sm-3" for="asset_type">Type:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_type" name="type" value="{{ $data->type }}" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-3" for="asset_note">Note:</label>
        <div class="col-sm-6">
            <textarea class="form-control" id="asset_note" name="note" required>{{ $data->note }}</textarea>
        </div>
    </div>
</form>
@endsection