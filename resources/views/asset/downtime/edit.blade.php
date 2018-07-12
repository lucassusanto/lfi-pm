@extends('layouts.lfi')

@section('content')
<form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/depreciation/commit_edit') }}">
<input type="hidden" name="id" value="{{ $data->id }}">
@csrf

<div class="row">
    <div class="col-md-12">
        <h2 align="center">Edit Asset Downtime</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/depreciation') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="col-md-4" align="center">
        {{ $asset_note }}
    </div>
    <div class="col-md-2 col-md-offset-2">
        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Edit</button>
    </div>
</div><br>

<div class="form-group">
    <label class="control-label col-sm-3" for="ad_sd">Start Date: *</label>
    <div class="col-sm-3">
        <input type="date" class="form-control" id="ad_sd" name="sd" value="{{ $data->start_date }}" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_ed">End Date: *</label>
    <div class="col-sm-3">
        <input type="date" class="form-control" id="ad_ed" name="ed" value="{{ $data->end_date }}" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_rate">Depreciation rate: *</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="ad_rate" name="rate" value="{{ $data->depreciation_rate }}" placeholder="0.5" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_sv">Start Value: *</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="ad_sv" name="sv" value="{{ $data->start_value }}" placeholder="100" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_ev">End Value: *</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="ad_ev" name="ev" value="{{ $data->end_value }}" placeholder="0" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_note">Note:</label>
    <div class="col-sm-6">
        <textarea class="form-control" id="ad_note" name="note" placeholder="Tuliskan catatan..">{{ $data->note }}</textarea>
    </div>
</div>

</form>
@endsection