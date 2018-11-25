@extends('adminlte::page')

@section('title', 'LFI - Edit Asset Type')

@section('content_header')
    <h1>Edit Asset Type</h1>
@stop

@section('content')
@include('status.msg')

<form id="typeForm" class="form-horizontal" method="POST" action="{{ url('asset/type/update') }}">
    <input type="hidden" name="id" value="{{ $data->id }}">
    <input type="hidden" name="type" value="{{ $data->type }}">
    @csrf

    <div class="box">
        <div class="box-header">
            <div class="pull-left">
                <a class="btn btn-default" href="{{ url('asset/type') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="pull-right">
                <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
            </div>
        </div>
        <div class="box-body">
            <div class="form-group">
                <label class="control-label col-sm-3" for="asset_type">Type: <span class="red">*</span></label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="asset_type" name="type" value="{{ $data->type }}" disabled>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3" for="asset_note">Note: <span class="red">*</span></label>
                <div class="col-sm-6">
                    <textarea class="form-control" id="asset_note" name="note" required>{{ $data->note }}</textarea>
                </div>
            </div>
        </div>
    </div>
</form>
@stop

@section('js')
<script src="{{ url('js/jquery.validate.min.js') }}"></script>

<script type="text/javascript">
$(function() {
    $('#typeForm').validate();
});
</script>
@stop

@section('css')
<style>
.red {
    color: red;
}
</style>
@stop