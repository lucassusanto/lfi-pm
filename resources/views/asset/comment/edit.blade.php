@extends('layouts.lfi')

@section('content')
<form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/commit_edit') }}">
    <input type="hidden" name="id" value="{{ $data->id }}">
    @csrf

    <div class="row">
        <div class="col-md-12">
            <h2 align="center">Edit Komentar Asset</h2>
        </div>
        <div class="col-md-4">
            <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/comment') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
        </div>
        <div class="col-md-4" align="center">
            {{ $asset_note }}
        </div>
        <div class="col-md-2 col-md-offset-2">
            <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Edit</button>
        </div>
    </div><br>

    <div class="form-group">
        <label class="control-label col-sm-3" for="asset_comment">Note:</label>
        <div class="col-sm-6">
            <textarea class="form-control" id="asset_comment" name="comment" required>{{ $data->comment }}</textarea>
        </div>
    </div>
</form>
@endsection