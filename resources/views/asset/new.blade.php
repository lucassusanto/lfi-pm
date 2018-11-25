@extends('adminlte::page')

@section('title', 'LFI - Tambah Asset')

@section('content_header')
    <h1>Tambah Asset</h1>
@stop

@section('content')
@include('status.msg')

<form id="assetForm" class="form-horizontal" method="POST" action="{{ url('asset/store') }}">
@csrf
<div class="box">
    <div class="box-header">
        <div class="pull-left">
            <a class="btn btn-default" href="{{ url('asset') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
        </div>
        <div class="pull-right">
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
        </div>
    </div>
    <div class="box-body">
        <div class="col-md-12">
            <h4 align="left">ASSET</h4>
        </div><br><br><br>
            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_no">Asset No: <span class="red">*</span></label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="asset_no" name="no" placeholder="Asset No" required>
                </div>

                <label class="control-label col-sm-3" for="asset_priority">Asset Priority: <span class="red">*</span></label>
                <div class="col-sm-3">
                    <select class="form-control" id="asset_priority" name="priority">
                        <option>Critical</option>
                        <option>Production</option>
                        <option>Non-Production</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_status">Asset Status: <span class="red">*</span></label>
                <div class="col-sm-3">
                    <select class="form-control" id="asset_status" name="status">
                        <option>In service</option>
                        <option>In repair</option>
                        <option>Scrapped</option>
                    </select>
                </div>

                <label class="control-label col-sm-3" for="asset_weight">Weight:</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="asset_weight" name="weight" placeholder="Weight">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_category">Asset Category: <span class="red">*</span></label>
                <div class="col-sm-3">
                    <select class="form-control" name="category" required>
                        @foreach($categories as $cat)
                            <option VALUE="{{ $cat->id }}">{{ $cat->note }}</option>
                        @endforeach
                    </select>
                </div>
                <label class="control-label col-sm-3" for="asset_wuom">Weight UOM:</label>
                <div class="col-sm-3">
                    <select class="form-control" name="wuom">
                        <option></option>
                        @foreach($wuoms as $wuom)
                            <option value="{{ $wuom->id }}">{{ $wuom->uom }}</option>
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
                            <option value="{{ $loc->id }}">{{ $loc->note }}</option>
                        @endforeach
                    </select>
                </div>
                <label class="control-label col-sm-3" for="asset_sn">Serial No:</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="asset_sn" name="sn" placeholder="Serial No">
                </div>
            </div><br>
            
            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_note">Notes: <span class="red">*</span></label>
                <div class="col-sm-9">
                    <textarea class="form-control" id="asset_note" name="note" placeholder="Tuliskan catatan .." required></textarea>
                </div>
            </div>

            <div class="col-md-12">
                <h4 align="left">WARRANTY</h4>
            </div><br><br><br>

            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_sd">Start Date:</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="asset_sd" name="sd">
                </div>
                <label class="control-label col-sm-3" for="asset_pd">Purchase Date:</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="asset_pd" name="pd">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_ws">Warranty Start:</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="asset_ws" name="ws">
                </div>
                <label class="control-label col-sm-3" for="asset_we">Warranty End:</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="asset_we" name="we">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_vendor">Vendor:</label>
                <div class="col-sm-3">
                    <select class="form-control" name="vendor">
                        <option></option>
                        @foreach($vendors as $vendor)
                            <option value="{{ $vendor->id }}">{{ $vendor->vendor }}</option>
                        @endforeach
                    </select>
                </div>
                <label class="control-label col-sm-3" for="asset_manufacturer">Manufacturer:</label>
                <div class="col-sm-3">
                    <select class="form-control" name="manufacturer">
                        <option></option>
                        @foreach($manufacturers as $manufacturer)
                            <option value="{{ $manufacturer->id }}">{{ $manufacturer->manufacturer }}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_ori_cost">Original Cost (USD):</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="asset_ori_cost" name="ori_cost" placeholder="USD">
                </div>
            </div><br>

            <div class="col-md-12">
                <h4 align="left">COST</h4>
            </div><br><br><br>

            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_mmc">Maintenance Material Cost (USD):</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="asset_mmc" name="mmc" placeholder="USD">
                </div>
                <label class="control-label col-sm-3" for="asset_mlc">Maintenance Labor Cost (USD):</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="asset_mlc" name="mlc" placeholder="USD">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="asset_mlh">Maintenance Labor Hours:</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="asset_mlh" name="mlh" placeholder="Hour">
                </div>
                <label class="control-label col-sm-3" for="asset_mc">Maintenance Cost (USD):</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="asset_mc" name="mc" placeholder="USD">
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
                            <option value="{{ $costcode->id }}">{{ $costcode->note }}</option>
                        @endforeach
                    </select>
                </div>
                <label class="control-label col-sm-3" for="asset_dept">Department:</label>
                <div class="col-sm-3">
                    <select class="form-control" name="dept">
                        <option></option>
                        @foreach($depts as $dept)
                            <option value="{{ $dept->id }}">{{ $dept->dept }}</option>
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
                            <option value="{{ $item->id }}">{{ $item->in_no }}</option>
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
                        <option>Straight Line</option>
                        <option>Other</option>
                    </select>
                </div>
                <label class="control-label col-sm-3" for="asset_ds">Depreciation start:</label>
                <div class="col-sm-3">
                    <input type="date" class="form-control" id="asset_ds" name="ds">
                </div>
            </div><br>

            <div class="form-group">
            <label class="control-label col-sm-2" for="asset_di">Depreciation interval:</label>
            <div class="col-sm-3">
                    <select class="form-control" id="asset_di" name="di">
                        <option></option>
                        <option>Annually</option>
                        <option>Quarterly</option>
                    </select>
                </div>
            <label class="control-label col-sm-3" for="asset_dr">Depreciation rate:</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="asset_dr" name="dr" placeholder="Rate">
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
    $('#assetForm').validate({
        rules: { no: { remote: '{{ url('api/asset/cekAssetNo') }}' }},
        messages: { no: { remote: 'This Asset No already exists.' }}
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