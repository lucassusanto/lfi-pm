@extends('layouts.lfi')

@section('content')
<form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/depreciation/new') }}">
@csrf
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Tambah Asset Depreciation</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/depreciation') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="col-md-4" align="center">
        {{ $asset_note }}
    </div>
    <div class="col-md-2 col-md-offset-2">
        <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
    </div>
</div><br>

<!-- Input: start date*, end date*, dep rate*, start val*, end val*, note -->

<div class="form-group">
    <label class="control-label col-sm-3" for="ad_sd">Start Date: *</label>
    <div class="col-sm-3">
        <input type="date" class="form-control" id="ad_sd" name="sd" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_ed">End Date: *</label>
    <div class="col-sm-3">
        <input type="date" class="form-control" id="ad_ed" name="ed" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_rate">Depreciation rate: *</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="ad_rate" name="rate" placeholder="0.5" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_sv">Start Value: *</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="ad_sv" name="sv" placeholder="100" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_ev">End Value: *</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="ad_ev" name="ev" placeholder="0" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_note">Note:</label>
    <div class="col-sm-6">
        <textarea class="form-control" id="ad_note" name="note" placeholder="Tuliskan catatan.."></textarea>
    </div>
</div>

</form>
@endsection