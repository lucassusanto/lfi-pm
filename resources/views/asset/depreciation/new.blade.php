@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Depreciation</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="#"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
</div><br>

<form class="form-horizontal" action="action.php">


    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Start Date:</label>
        <div class="col-sm-2">
            <input type="date" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">End Date:</label>
        <div class="col-sm-2">
            <input type="date" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Depreciation Rate:</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" id="asset_no" name="rollover reading" placeholder="Rate" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Start Value (USD):</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" id="asset_no" name="rollover reading" placeholder="USD" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">End Value (USD):</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" id="asset_no" name="rollover reading" placeholder="USD" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Note:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="asset_no" name="rollover reading" placeholder="Notes" required>
        </div>
    </div>

    <br>


    <div class="form-group">
        <div class="col-sm-4 col-sm-offset-4">
            <button class="btn btn-danger"><span class="glyphicon glyphicon-trash" ></span> Delete</button>
            <button class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            <button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Edit</button>
        </div>
    </div>
</form>
@endsection