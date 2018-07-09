@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Downtime</h2>
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
        <label class="control-label col-sm-1" for="category">At:</label>
        <div class="col-sm-2">
            <input type="time" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div> 
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">End Date:</label>
        <div class="col-sm-2">
            <input type="date" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>

        <label class="control-label col-sm-1" for="category">At:</label>
        <div class="col-sm-2">
            <input type="time" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div> 
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Hours:</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" id="asset_no" name="rollover reading" placeholder="Rate" required>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="priority">Downtime:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_priority" name="priority">
                <option>Emergency</option>
                <option>Planned Maintenance</option>
                <option>Project</option>
                <option>Other</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="priority">Downtime Cause:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_priority" name="priority">
                <option>Operation</option>
                <option>Maintenance</option>
                <option>Other</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="priority">Workorder No.:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_priority" name="priority">
                <option>001</option>
                <option>002</option>
                <option>003</option>
                <option>004</option>
                <option>005</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="priority">Reported By.:</label>
        <div class="col-sm-3">
            <select class="form-control" id="asset_priority" name="priority">
                <option>a</option>
                <option>b</option>
                <option>c</option>
                <option>d</option>
                <option>e</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">End Date:</label>
        <div class="col-sm-2">
            <input type="date" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
        </div>

        <label class="control-label col-sm-1" for="category">At:</label>
        <div class="col-sm-2">
            <input type="time" class="form-control" id="asset_no" name="no" placeholder="Weight" required>
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