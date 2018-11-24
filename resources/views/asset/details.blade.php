@extends('adminlte::page')

@section('title', 'LFI - Asset Details')

@section('content_header')
    <h1>Asset Details</h1>
@stop

@section('content')
@include('status')
<form id="edit_asset" method="POST" action="{{ url('asset/edit') }}">
    <input type="hidden" name="id" value="{{ $asset_id }}">
    @csrf
</form>

<div class="box">
<div class="box-header">
    <div class="pull-left">
        <a class="btn btn-default" href="{{ url('asset/'.$asset_id) }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="pull-right">
        <button class="btn btn-primary" onclick="$('#edit_asset').submit()"><span class="glyphicon glyphicon-edit"></span> Edit</button>
    </div>
</div>
<div class="box-body">
<ul class="nav nav-tabs nav-justified">
    <li class="active"><a data-toggle="pill" href="#asset_menu_overview">Overview</a></li>
    <li><a data-toggle="pill" href="#asset_menu_warranty">Warranty</a></li>
    <li><a data-toggle="pill" href="#asset_menu_cost">Cost</a></li>
    <li><a data-toggle="pill" href="#asset_menu_codes">Codes</a></li>
    <li><a data-toggle="pill" href="#asset_menu_depreciation">Depreciation</a></li>
</ul><br>

<div class="tab-content">
    <div id="asset_menu_overview" class="tab-pane fade in active">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2 text-right" for="asset_id">Asset No: *</label>
                <div class="col-sm-3">
                    <input  class="form-control" id="asset_id" value="{{ $asset_data->asset_no }}" disabled>
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
                    <textbox class="form-control" disabled>{{ $asset_data->weight }}</textbox>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Asset Category: *</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->category }}</option>
                    </select>
                </div>
                <label class="control-label col-sm-3">Weight UOM:</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->wuom }}</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Location:</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->location }}</option>
                    </select>
                </div>
                <label class="control-label col-sm-3">Serial No:</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->serial_no }}</textbox>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_note">Notes: *</label>
                <div class="col-sm-9">
                    <textarea class="form-control" disabled>{{ $asset_data->note }}</textarea>
                </div>
            </div>
        </div>
    </div>

    <div id="asset_menu_warranty" class="tab-pane fade">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2">Start Date:</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->start_date }}</textbox>
                </div>
                <label class="control-label col-sm-3">Purchase Date:</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->purchase_date }}</textbox>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Warranty Start:</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->warranty_start_date }}</textbox>
                </div>
                <label class="control-label col-sm-3">Warranty End:</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->warranty_end_date }}</textbox>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Vendor:</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->vendor }}</option>
                    </select>
                </div>
                <label class="control-label col-sm-3">Manufacturer:</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->manufacturer }}</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Original Cost (USD):</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->original_cost }}</textbox>
                </div>
            </div>
        </div>
    </div>

    <div id="asset_menu_cost" class="tab-pane fade">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2">Maintenance Material Cost (USD):</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->maint_material_cost }}</textbox>
                </div>
                <label class="control-label col-sm-3">Maintenance Labor Cost (USD):</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->maint_labor_cost }}</textbox>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Maintenance Labor Hours:</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->maint_labor_hours }}</textbox>
                </div>
                <label class="control-label col-sm-3">Maintenance Cost (USD):</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->maint_cost }}</textbox>
                </div>
            </div>
        </div>
    </div>

    <div id="asset_menu_codes" class="tab-pane fade">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2">Cost Code:</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->costcode }}</option>
                    </select>
                </div>
                <label class="control-label col-sm-3">Department:</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->dept }}</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Item:</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->item }}</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <div id="asset_menu_depreciation" class="tab-pane fade">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2">Depreciation type:</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->depreciation_type_id }}</option>
                    </select>
                </div>
                <label class="control-label col-sm-3">Depreciation start:</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->depreciation_start }}</textbox>
                </div>
            </div><br>

            <div class="form-group">
                <label class="control-label col-sm-2">Depreciation interval:</label>
                <div class="col-sm-3">
                    <select class="form-control" disabled>
                        <option>{{ $asset_data->depreciation_time_id }}</option>
                    </select>
                </div>
                <label class="control-label col-sm-3" for="asset_dr">Depreciation rate:</label>
                <div class="col-sm-3">
                    <textbox class="form-control" disabled>{{ $asset_data->depreciation_rate }}</textbox>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
@stop