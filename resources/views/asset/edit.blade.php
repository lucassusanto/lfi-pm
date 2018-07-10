@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Tambah Asset</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="{{ url('asset') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
</div><br>

<div class="col-md-12">
    <h4 align="left">ASSET</h4>
</div><br><br><br>

<form class="form-horizontal" action="action.php">
    <div class="form-group">
        <label class="control-label col-sm-2" for="no">Asset No:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="Asset No" required>
        </div>
        <label class="control-label col-sm-3" for="priority">Asset Priority:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_priority" name="priority">
                <option>Critical</option>
                <option>Production</option>
                <option>Non-Production</option>
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

        <label class="control-label col-sm-3" for="category">Weight:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
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
        <label class="control-label col-sm-3" for="category">Weight UOM:</label>
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
        <label class="control-label col-sm-2" for="category">Location:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_category" name="category">
                <option>Office Area</option>
                <option>Production Area</option>
                <option>Raw Material Area</option>
                <option>Production System Mercury</option>
                <option>Production System Saturn</option>
                <option>Mercury Console Suite</option>
            </select>
        </div>
        <label class="control-label col-sm-3" for="category">Serial No.:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>
        <!-- <label class="control-label col-sm-3" for="category">Department:</label>
        <div class="col-sm-3">
            <select class="form-control" id="uom" name="dinterval">
                <option>Admin</option>
                <option>Inventory</option>
                <option>Maintenance</option>
                <option>Plant</option>
                <option>Production</option>
                <option>Purchase</option>
            </select>
        </div> -->
    </div><br>

    <div class="col-md-12">
        <h4 align="left">WARRANTY</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Start Date:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>
        <label class="control-label col-sm-3" for="category">Purchase Date:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Warranty Start:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>
        <label class="control-label col-sm-3" for="category">Warranty End:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="dinterval">Vendor:</label>
        <div class="col-sm-3">
            <select class="form-control" id="uom" name="dinterval">
                <option>5-Star</option>
                <option>CMB</option>
                <option>CSS</option>
                <option>Industrial Suppliers, Inc.</option>
            </select>
        </div>
        <label class="control-label col-sm-3" for="category">Manufacturer:</label>
        <div class="col-sm-3">
            <select class="form-control" id="uom" name="dinterval">
                <option>Precision Systems, Inc.</option>
            </select>
        </div>

        <!-- <label class="control-label col-sm-3" for="category">Maintenance Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="USD" required>
        </div> -->
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Original Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="USD" required>
        </div>
    </div><br>

    <div class="col-md-12">
        <h4 align="left">COST</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Maintenance Material Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="USD" required>
        </div>
        <label class="control-label col-sm-3" for="category">Maintenance Labor Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="USD" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Maintenance Labor Hours:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="Hour" required>
        </div>
        <label class="control-label col-sm-3" for="category">Maintenance Cost (USD):</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_no" name="no" placeholder="USD" required>
        </div>
    </div><br>

    <div class="col-md-12">
        <h4 align="left">CODES</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Cost Code:</label>
        <div class="col-sm-3">
            <select class="form-control" id="uom" name="dinterval">
                <option>Labor Cost</option>
                <option>Material Cost</option>
                <option>Training Cost</option>
                <option>Production Cost</option>
            </select>
        </div>
        <label class="control-label col-sm-3" for="category">Department:</label>
        <div class="col-sm-3">
            <select class="form-control" id="uom" name="dinterval">
                <option>Admin</option>
                <option>Inventory</option>
                <option>Maintenance</option>
                <option>Plant</option>
                <option>Production</option>
                <option>Purchase</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Item:</label>
        <div class="col-sm-3">
            <select class="form-control" id="uom" name="dinterval">
                <option>1000-Pump-Seal</option>
                <option>100HP-Compressor-Bearing</option>
                <option>Powertool-1000</option>
            </select>
        </div>
    </div><br>

    <div class="col-md-12">
        <h4 align="left">DEPRECIATION</h4>
    </div><br><br><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="dtype">Depreciation type:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_dtype" name="dtype">
                <option>Straight Line</option>
                <option>Other</option>
            </select>
        </div>
        <label class="control-label col-sm-3" for="category">Department:</label>
        <div class="col-sm-3">
            <input type="date" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>
    </div><br>

    <div class="form-group">
       <label class="control-label col-sm-2" for="dinterval">Depreciation interval:</label>
       <div class="col-sm-3">
        <select class="form-control" id="asset_dinterval" name="dinterval">
            <option>Annually</option>
            <option>Quarterly</option>
        </select>
    </div>
    <label class="control-label col-sm-3" for="category">Department:</label>
    <div class="col-sm-3">
        <select class="form-control" id="uom" name="dinterval">
            <option>Admin</option>
            <option>Inventory</option>
            <option>Maintenance</option>
            <option>Plant</option>
            <option>Production</option>
            <option>Purchase</option>
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