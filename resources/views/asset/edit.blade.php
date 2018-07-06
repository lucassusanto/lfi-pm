@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Edit Asset</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="{{ url('asset') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
</div><br>

<form class="form-horizontal" action="action.php">
    <div class="form-group">
        <label class="control-label col-sm-2" for="no">Asset No:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="Asset No" required>
        </div>
        <label class="control-label col-sm-3" for="dtype">Depreciation type:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_dtype" name="dtype">
                <option>Straight Line</option>
                <option>Other</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="priority">Asset Priority:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_priority" name="priority">
                <option>Critical</option>
                <option>Production</option>
                <option>Non-Production</option>
            </select>
        </div>
        <label class="control-label col-sm-3" for="dinterval">Depreciation interval:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_dinterval" name="dinterval">
                <option>Annually</option>
                <option>Quarterly</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="status">Asset Status:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_status" name="status">
                <option>In service</option>
                <option>In repair</option>
                <option>Scrapped</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Asset Category:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_category" name="category">
                <option>Equipment</option>
                <option>Building</option>
                <option>System</option>
                <option>Location</option>
            </select>
        </div>
    </div><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="notes">Notes:</label>
        <div class="col-sm-9">
            <textarea class="form-control" id="asset_notes" name="notes" placeholder="Tuliskan catatan .."></textarea>
        </div>
    </div><br>

    <div class="form-group">
        <div class="col-sm-4 col-sm-offset-4">
            <button class="btn btn-danger"><span class="glyphicon glyphicon-trash" ></span> Delete</button>
            <button class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            <button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Edit</button>
        </div>
    </div>
</form>
@endsection