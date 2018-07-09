@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Part</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="#"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
</div><br>

<form class="form-horizontal" action="action.php">
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Item:</label>
        <div class="col-sm-3">
            <select class="form-control" id="uom" name="dinterval">
                <option>1000-Pump-Seal</option>
                <option>100HP-Compressor-Bearing</option>
                <option>Powertool-1000</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Type:</label>
        <div class="col-sm-3">
            <select class="form-control" id="uom" name="dinterval">
                <option>Major</option>
                <option>Routine</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">QTY:</label>
        <div class="col-sm-3">
            <input type="number" class="form-control" id="asset_no" name="no" placeholder="qty" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Weight UOM:</label>
        <div class="col-sm-3">
            <select class="form-control" id="uom" name="dinterval">
                <option>Day</option>
                <option>Each</option>
                <option>Hour</option>
                <option>Pound</option>
                <option>Rotation</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="notes">Notes:</label>
        <div class="col-sm-6">
            <textarea class="form-control" id="asset_notes" name="notes" placeholder="Tuliskan catatan .."></textarea>
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