@extends('adminlte::page')

@section('title', 'LFI - Add Asset Type')

@section('content_header')
    <h1>Add Asset Type</h1>
@stop

@section('content')
@include('status.msg')

<form id="typeForm" class="form-horizontal" method="POST" action="{{ url('asset/type/store') }}">
@csrf
<div class="box">
    <div class="box-header">
        <div class="pull-left">
            <a class="btn btn-default" href="{{ url('asset/type') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
        </div>
        <div class="pull-right">
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
        </div>
    </div>
    <div class="box-body">
        <div class="form-group">
            <label class="control-label col-sm-3" for="asset_type">Type: <span class="red">*</span></label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="asset_type" name="type" required>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" for="asset_note">Note: <span class="red">*</span></label>
            <div class="col-sm-6">
                <textarea class="form-control" id="asset_note" name="note" required></textarea>
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
    $('#typeForm').validate({
        rules: { type: { remote: '{{ url('api/asset/cekAssetType') }}' }},
        messages: { type: { remote: 'This type already exists.' }}
    });
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