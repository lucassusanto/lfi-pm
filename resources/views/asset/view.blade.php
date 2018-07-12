@extends('layouts.lfi')

@section('js')
<script type="text/javascript">
    function getID(doc) {
        var options = doc.options;
        return options[options.selectedIndex].id;
    }
</script>
@endsection

@section('content')
<form class="form-horizontal" method="POST" action="{{ url('asset/commit_edit') }}">
    <input type="hidden" name="id" value="{{ $asset_data->id }}">
    @csrf
<!-- Mandatory: asset no, asset priority, status, cat, dep type, dep interval
    Query: category, uom, location, vendor, manufacturer, costcode, dept, item  -->

    <div class="row">
        <div class="col-md-12">
            <h2 align="center">Asset</h2>
        </div>
        <div class="col-md-4">
            <a class="btn btn-default" href="{{ url('asset') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
        </div>
        <div class="col-md-4">
            <a href=""></a>
        </div> 
    </div><br>
    <div class="row">
        <div class="col-md-4">
            <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Asset Part</a></li>
                    <li><a href="{{ $asset_data->id }}/meter">Asset Meter</a></li>
                    <li><a href="#">Contract</a></li>
                    <li><a href="#" onclick="depreciation(this)">Asset Depreciation</a></li>
                    <li><a href="#" onclick="downtime(this)">Asset Downtime</a></li>
                    <li><a href="#" onclick="comment(this)">Asset Comment</a></li>
                </ul>
            </div>
        </div>
    </div> <br>

    <div class="col-md-12">
        <h4 align="left">ASSET</h4>
    </div><br><br><br>
    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_no">Asset No: </label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="Asset No" value="{{ $asset_data->asset_no }}" disabled>
        </div>

        <label class="control-label col-sm-3" for="asset_priority">Asset Priority: *</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_priority" name="priority" disabled>
                <option @if($asset_data->priority_id == 'Critical') selected @endif>Critical</option>
                <option @if($asset_data->priority_id == 'Production') selected @endif>Production</option>
                <option @if($asset_data->priority_id == 'Non-Production') selected @endif>Non-Production</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_status">Asset Status: *</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_status" name="status" disabled>
                <option @if($asset_data->status_id == 'In service') selected @endif>In service</option>
                <option @if($asset_data->status_id == 'In repair') selected @endif>In repair</option>
                <option @if($asset_data->status_id == 'Scrapped') selected @endif>Scrapped</option>
            </select>
        </div>

        <label class="control-label col-sm-3" for="asset_weight">Weight:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_weight" name="weight" placeholder="Weight" value="{{ $asset_data->weight }}" disabled>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_category">Asset Category: *</label>
        <div class="col-sm-3">
            <input type="hidden" id="asset_category" name="category" value="{{ $asset_data->type_id }}">
            <select class="form-control" onchange="document.getElementById('asset_category').value = getID(this);" disabled>
                @foreach($categories as $cat)
                <option id="{{ $cat->id }}" @if($asset_data->type_id == $cat->id) selected @endif>{{ $cat->note }}</option>
                @endforeach
            </select>
        </div>
        <label class="control-label col-sm-3" for="asset_wuom">Weight UOM:</label>
        <div class="col-sm-3">
            <input type="hidden" id="asset_wuom" name="wuom" value="{{ $asset_data->weight_uom_id }}">
            <select class="form-control" onchange="document.getElementById('asset_wuom').value = getID(this);" disabled>
                <option></option>
                @foreach($wuoms as $wuom)
                <option id="{{ $wuom->id }}" @if($asset_data->weight_uom_id == $wuom->id) selected @endif>{{ $wuom->uom }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_location">Location:</label>
        <div class="col-sm-3">
            <input type="hidden" id="asset_location" name="location" value="{{ $asset_data->location_id }}">
            <select class="form-control" onchange="document.getElementById('asset_location').value = getID(this);" disabled>
                <option></option>
                @foreach($locations as $loc)
                <option id="{{ $loc->id }}" @if($asset_data->location_id == $loc->id) selected @endif>{{ $loc->note }}</option>
                @endforeach
            </select>
        </div>
        <label class="control-label col-sm-3" for="asset_sn">Serial No:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_sn" name="sn" placeholder="Serial No" value="{{ $asset_data->serial_no }}" disabled>
        </div>
    </div><br>
    
    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_note">Notes: *</label>
        <div class="col-sm-9">
            <textarea class="form-control" id="asset_note" name="note" placeholder="Tuliskan catatan .." disabled>{{ $asset_data->note }}</textarea>
        </div>
    </div>

    <div class="col-md-12">
        <h4 align="left">WARRANTY</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_sd">Start Date:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_sd" name="sd" value="{{ $asset_data->start_date }}" disabled>
        </div>
        <label class="control-label col-sm-3" for="asset_pd">Purchase Date:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_pd" name="pd" value="{{ $asset_data->purchase_date }}" disabled>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_ws">Warranty Start:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_ws" name="ws" value="{{ $asset_data->warranty_start_date }}" disabled>
        </div>
        <label class="control-label col-sm-3" for="asset_we">Warranty End:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_we" name="we" value="{{ $asset_data->warranty_end_date }}" disabled>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_vendor">Vendor:</label>
        <div class="col-sm-3">
            <input type="hidden" id="asset_vendor" name="vendor" value="{{ $asset_data->vendor_id }}">
            <select class="form-control" onchange="document.getElementById('asset_vendor').value = getID(this);" disabled>
                <option></option>
                @foreach($vendors as $vendor)
                <option id="{{ $vendor->id }}" @if($asset_data->vendor_id == $vendor->id) selected @endif>{{ $vendor->vendor }}</option>
                @endforeach
            </select>

        </div>
        <label class="control-label col-sm-3" for="asset_manufacturer">Manufacturer:</label>
        <div class="col-sm-3">
            <input type="hidden" id="asset_manufacturer" name="manufacturer" value="{{ $asset_data->manufacturer_id }}">
            <select class="form-control" onchange="document.getElementById('asset_manufacturer').value = getID(this);" disabled>
                <option></option>
                @foreach($manufacturers as $manufacturer)
                <option id="{{ $manufacturer->id }}" @if($asset_data->manufacturer_id == $manufacturer->id) selected @endif>{{ $manufacturer->manufacturer }}</option>
                @endforeach
            </select>

        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_ori_cost">Original Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_ori_cost" name="ori_cost" placeholder="USD" value="{{ $asset_data->original_cost }}" disabled>
        </div>
    </div><br>

    <div class="col-md-12">
        <h4 align="left">COST</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_mmc">Maintenance Material Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_mmc" name="mmc" placeholder="USD" value="{{ $asset_data->maint_material_cost }}" disabled>
        </div>
        <label class="control-label col-sm-3" for="asset_mlc">Maintenance Labor Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_mlc" name="mlc" placeholder="USD" value="{{ $asset_data->maint_labor_cost }}" disabled>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_mlh">Maintenance Labor Hours:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_mlh" name="mlh" placeholder="Hour" value="{{ $asset_data->maint_labor_hours }}" disabled>
        </div>
        <label class="control-label col-sm-3" for="asset_mc">Maintenance Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_mc" name="mc" placeholder="USD" value="{{ $asset_data->maint_cost }}" disabled>
        </div>
    </div><br>

    <div class="col-md-12">
        <h4 align="left">CODES</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_cc">Cost Code:</label>
        <div class="col-sm-3">
            <input type="hidden" id="asset_cc" name="cc" value="{{ $asset_data->costcode_id }}">
            <select class="form-control" onchange="document.getElementById('asset_cc').value = getID(this);" disabled>
                @foreach($costcodes as $costcode)
                <option id="{{ $costcode->id }}" @if($asset_data->costcode_id == $costcode->id) selected @endif>{{ $costcode->note }}</option>
                @endforeach
            </select>
        </div>
        <label class="control-label col-sm-3" for="asset_dept">Department:</label>
        <div class="col-sm-3">
            <input type="hidden" id="asset_dept" name="dept" value="{{ $asset_data->dept_id }}">
            <select class="form-control" onchange="document.getElementById('asset_dept').value = getID(this);" disabled>
                @foreach($depts as $dept)
                <option id="{{ $dept->id }}" @if($asset_data->dept_id == $dept->id) selected @endif>{{ $dept->dept }}</option>
                @endforeach
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_item">Item:</label>
        <div class="col-sm-3">
            <input type="hidden" id="asset_item" name="ai" value="{{ $asset_data->in_id }}">
            <select class="form-control" onchange="document.getElementById('asset_item').value = getID(this);" disabled>
                @foreach($items as $item)
                <option id="{{ $item->id }}" @if($asset_data->in_id == $item->id) selected @endif>{{ $item->in_no }}</option>
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
            <select class="form-control" id="asset_dt" name="dt" disabled>
                <option @if($asset_data->depreciation_type_id == 'Straight Line') selected @endif>Straight Line</option>
                <option @if($asset_data->depreciation_type_id == 'Other') selected @endif>Other</option>
            </select>
        </div>
        <label class="control-label col-sm-3" for="asset_ds">Depreciation start:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_ds" name="ds" value="{{ $asset_data->depreciation_start }}" disabled>
        </div>
    </div><br>

    <div class="form-group">
       <label class="control-label col-sm-2" for="asset_di">Depreciation interval:</label>
       <div class="col-sm-3">
        <select class="form-control" id="asset_di" name="di" disabled>
            <option></option>
            <option @if($asset_data->depreciation_time_id == 'Annually') selected @endif>Annually</option>
            <option @if($asset_data->depreciation_time_id == 'Quarterly') selected @endif>Quarterly</option>
        </select>
    </div>
    <label class="control-label col-sm-3" for="asset_dr">Depreciation rate:</label>
    <div class="col-sm-3">
        <input type="text" class="form-control" id="asset_dr" name="dr" placeholder="Rate" value="{{ $asset_data->depreciation_rate }}" disabled>
    </div>
</div>
</form>
@endsection