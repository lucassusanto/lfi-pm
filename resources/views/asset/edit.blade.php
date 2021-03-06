@extends('adminlte::page')

@section('title', 'LFI - Edit Asset')

@section('content_header')
    <h1>Edit Asset</h1>
@stop

@section('content')
@include('status.msg')

<form id="assetForm" class="form-horizontal" method="POST" action="{{ url('asset/update') }}">
<input type="hidden" name="id" value="{{ $asset_data->id }}">
<input type="hidden" name="no" value="{{ $asset_data->asset_no }}">
@csrf

<div class="box">
    <div class="box-header">
        <div class="pull-left">
            <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/details' ) }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            <a class="btn btn-default" href="{{ url('asset') }}"><span class="glyphicon glyphicon-home"></span> Home</a>
        </div>
        <div class="pull-right">
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
        </div>
    </div>
    <div class="box-body">
<div class="col-md-12">
    <h4 align="left">ASSET</h4>
</div><br><br><br>
    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_no">Asset No: <span class="red">*</span></label>
        <div class="col-sm-3">
            <textbox type="text" class="form-control" disabled>{{ $asset_data->asset_no }}</textbox>
        </div>

        <label class="control-label col-sm-3" for="asset_priority">Asset Priority: <span class="red">*</span></label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_priority" name="priority">
                <option @if($asset_data->priority_id == 'Critical') selected @endif>Critical</option>
                <option @if($asset_data->priority_id == 'Production') selected @endif>Production</option>
                <option @if($asset_data->priority_id == 'Non-Production') selected @endif>Non-Production</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_status">Asset Status: <span class="red">*</span></label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_status" name="status">
                <option @if($asset_data->status_id == 'In service') selected @endif>In service</option>
                <option @if($asset_data->status_id == 'In repair') selected @endif>In repair</option>
                <option @if($asset_data->status_id == 'Scrapped') selected @endif>Scrapped</option>
            </select>
        </div>

        <label class="control-label col-sm-3" for="asset_weight">Weight:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_weight" name="weight" placeholder="Weight" value="{{ $asset_data->weight }}">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_category">Asset Category: <span class="red">*</span></label>
        <div class="col-sm-3">
            <select class="form-control" name="category" required>
                @foreach($categories as $cat)
                    <option value="{{ $cat->id }}" @if($asset_data->type_id == $cat->id) selected @endif>{{ $cat->note }}</option>
                @endforeach
            </select>
        </div>
        <label class="control-label col-sm-3" for="asset_wuom">Weight UOM:</label>
        <div class="col-sm-3">
            <select class="form-control" name="wuom">
                <option></option>
                @foreach($wuoms as $wuom)
                    <option value="{{ $wuom->id }}" @if($asset_data->weight_uom_id == $wuom->id) selected @endif>{{ $wuom->uom }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_location">Location:</label>
        <div class="col-sm-3">
            <select class="form-control" name="location">
                <option></option>
                @foreach($locations as $loc)
                    <option value="{{ $loc->id }}" @if($asset_data->location_id == $loc->id) selected @endif>{{ $loc->note }}</option>
                @endforeach
            </select>
        </div>
        <label class="control-label col-sm-3" for="asset_sn">Serial No:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_sn" name="sn" placeholder="Serial No" value="{{ $asset_data->serial_no }}">
        </div>
    </div><br>
    
    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_note">Notes: <span class="red">*</span></label>
        <div class="col-sm-9">
            <textarea class="form-control" id="asset_note" name="note" placeholder="Tuliskan catatan .." required>{{ $asset_data->note }}</textarea>
        </div>
    </div>

    <div class="col-md-12">
        <h4 align="left">WARRANTY</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_sd">Start Date:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_sd" name="sd" value="{{ $asset_data->start_date }}">
        </div>
        <label class="control-label col-sm-3" for="asset_pd">Purchase Date:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_pd" name="pd" value="{{ $asset_data->purchase_date }}">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_ws">Warranty Start:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_ws" name="ws" value="{{ $asset_data->warranty_start_date }}">
        </div>
        <label class="control-label col-sm-3" for="asset_we">Warranty End:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_we" name="we" value="{{ $asset_data->warranty_end_date }}">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_vendor">Vendor:</label>
        <div class="col-sm-3">
            <select class="form-control" name="vendor">
                <option></option>
                @foreach($vendors as $vendor)
                    <option value="{{ $vendor->id }}" @if($asset_data->vendor_id == $vendor->id) selected @endif>{{ $vendor->vendor }}</option>
                @endforeach
            </select>

        </div>
        <label class="control-label col-sm-3" for="asset_manufacturer">Manufacturer:</label>
        <div class="col-sm-3">
            <select class="form-control" name="manufacturer">
                <option></option>
                @foreach($manufacturers as $manufacturer)
                    <option value="{{ $manufacturer->id }}" @if($asset_data->manufacturer_id == $manufacturer->id) selected @endif>{{ $manufacturer->manufacturer }}</option>
                @endforeach
            </select>

        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_ori_cost">Original Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_ori_cost" name="ori_cost" placeholder="USD" value="{{ $asset_data->original_cost }}">
        </div>
    </div><br>

    <div class="col-md-12">
        <h4 align="left">COST</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_mmc">Maintenance Material Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_mmc" name="mmc" placeholder="USD" value="{{ $asset_data->maint_material_cost }}">
        </div>
        <label class="control-label col-sm-3" for="asset_mlc">Maintenance Labor Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_mlc" name="mlc" placeholder="USD" value="{{ $asset_data->maint_labor_cost }}">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_mlh">Maintenance Labor Hours:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_mlh" name="mlh" placeholder="Hour" value="{{ $asset_data->maint_labor_hours }}">
        </div>
        <label class="control-label col-sm-3" for="asset_mc">Maintenance Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_mc" name="mc" placeholder="USD" value="{{ $asset_data->maint_cost }}">
        </div>
    </div><br>

    <div class="col-md-12">
        <h4 align="left">CODES</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_cc">Cost Code:</label>
        <div class="col-sm-3">
            <select class="form-control" name="cc">
                <option></option>
                @foreach($costcodes as $costcode)
                    <option value="{{ $costcode->id }}" @if($asset_data->costcode_id == $costcode->id) selected @endif>{{ $costcode->note }}</option>
                @endforeach
            </select>
        </div>
        <label class="control-label col-sm-3" for="asset_dept">Department:</label>
        <div class="col-sm-3">
            <select class="form-control" name="dept">
                <option></option>
                @foreach($depts as $dept)
                    <option value="{{ $dept->id }}" @if($asset_data->dept_id == $dept->id) selected @endif>{{ $dept->dept }}</option>
                @endforeach
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_item">Item:</label>
        <div class="col-sm-3">
            <select class="form-control" name="ai">
                <option></option>
                @foreach($items as $item)
                    <option value="{{ $item->id }}" @if($asset_data->in_id == $item->id) selected @endif>{{ $item->in_no }}</option>
                @endforeach
            </select>
        </div>
    </div><br>

    <div class="col-md-12">
        <h4 align="left">DEPRECIATION</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_dt">Depreciation type:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_dt" name="dt">
                <option></option>
                <option @if($asset_data->depreciation_type_id == 'Straight Line') selected @endif>Straight Line</option>
                <option @if($asset_data->depreciation_type_id == 'Other') selected @endif>Other</option>
            </select>
        </div>
        <label class="control-label col-sm-3" for="asset_ds">Depreciation start:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_ds" name="ds" value="{{ $asset_data->depreciation_start }}">
        </div>
    </div><br>

    <div class="form-group">
       <label class="control-label col-sm-2" for="asset_di">Depreciation interval:</label>
       <div class="col-sm-3">
            <select class="form-control" id="asset_di" name="di">
                <option></option>
                <option @if($asset_data->depreciation_time_id == 'Annually') selected @endif>Annually</option>
                <option @if($asset_data->depreciation_time_id == 'Quarterly') selected @endif>Quarterly</option>
            </select>
        </div>
    <label class="control-label col-sm-3" for="asset_dr">Depreciation rate:</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="asset_dr" name="dr" placeholder="Rate" value="{{ $asset_data->depreciation_rate }}">
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
    $('#assetForm').validate();
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