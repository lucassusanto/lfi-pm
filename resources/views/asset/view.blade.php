@extends('layouts.lfi')

@section('content')
<h2 align="center">Asset</h2>

<div class="row">
    <div class="col-md-1">
        <a class="btn btn-default" href="{{ url('asset') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="col-md-2 col-md-offset-9">
        <a class="btn btn-primary" href="{{ url('asset/'.$asset_id.'/details') }}">View Details</a>
    </div>
</div><br>

<style>
.text-right {
    text-align: right;
}
</style>

<div class="form-horizontal">
<div class="form-group">
    <label class="control-label col-sm-2 text-right" for="asset_id">Asset No: *</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="asset_id" value="{{ $asset_data->asset_no }}" disabled>
    </div>

    <label class="control-label col-sm-3">Asset Priority: *</label>
    <div class="col-sm-3">
        <select class="form-control" disabled>
            <option>{{ $asset_data->priority_id }}</option>
        </select>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2 text-right">Asset Status: *</label>
    <div class="col-sm-3">
        <select class="form-control" disabled>
            <option>{{ $asset_data->status_id }}</option>
        </select>
    </div>

    <label class="control-label col-sm-3">Weight:</label>
    <div class="col-sm-3">
        <textbox type="text" class="form-control" disabled>{{ $asset_data->weight }}</textbox>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2">Asset Category: *</label>
    <div class="col-sm-3">
        <select class="form-control" disabled>
            @foreach($categories as $cat)
                @if($asset_data->type_id == $cat->id)
                    <option>{{ $cat->note }}</option>
                    @break
                @endif
            @endforeach
        </select>
    </div>
    <label class="control-label col-sm-3">Weight UOM:</label>
    <div class="col-sm-3">
        <select class="form-control" disabled>
            @foreach($wuoms as $wuom)
                @if($asset_data->weight_uom_id == $wuom->id)
                    <option>{{ $wuom->uom }}</option>
                    @break
                @endif
            @endforeach
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2">Location:</label>
    <div class="col-sm-3">
        <select class="form-control" disabled>
            @foreach($locations as $loc)
                @if($asset_data->location_id == $loc->id)
                    <option>{{ $loc->note }}</option>
                    @break
                @endif
            @endforeach
        </select>
    </div>
    <label class="control-label col-sm-3">Serial No:</label>
    <div class="col-sm-3">
        <textbox type="text" class="form-control" disabled>{{ $asset_data->serial_no }}</textbox>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="asset_note">Notes: *</label>
    <div class="col-sm-9">
        <textarea class="form-control" disabled>{{ $asset_data->note }}</textarea>
    </div>
</div>
</div>


<ul class="nav nav-tabs nav-justified">
    <li class="active"><a data-toggle="pill" href="#comment">Comment</a></li>
    <li><a data-toggle="pill" href="#contract">Contract</a></li>
    <li><a data-toggle="pill" href="#depreciation">Depreciation</a></li>
    <li><a data-toggle="pill" href="#downtime">Downtime</a></li>
    <li><a data-toggle="pill" href="#meter">Meter</a></li>
    <li><a data-toggle="pill" href="#part">Part</a></li>
</ul><br>

<div class="tab-content">
    <div id="comment" class="tab-pane fade in active">

    </div>
    <div id="contract" class="tab-pane fade">

    </div>
    <div id="depreciation" class="tab-pane fade">

    </div>
    <div id="downtime" class="tab-pane fade">

    </div>
    <div id="meter" class="tab-pane fade">

    </div>
    <div id="part" class="tab-pane fade">

    </div>
</div>

@endsection