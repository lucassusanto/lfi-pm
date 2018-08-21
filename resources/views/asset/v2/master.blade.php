<h2 align="center">Asset</h2>

<div class="row">
    <div class="col-md-1">
        <a class="btn btn-default" href="{{ url('asset') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="col-md-2 col-md-offset-9">
        <a class="btn btn-primary" href="{{ url('asset/'.$asset_id.'/details') }}">View Details</a>
    </div>
</div><br>

<div class="form-horizontal">
    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_id">Asset No: *</label>
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
        <label class="control-label col-sm-2">Asset Status: *</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                <option>{{ $asset_data->status_id }}</option>
            </select>
        </div>

        <label class="control-label col-sm-3">Location:</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                <option>{{ $asset_data->location }}</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Asset Category: *</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                <option>{{ $asset_data->category }}</option>
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
            <textbox class="form-control" disabled>{{ $asset_data->note }}</textbox>
        </div>
    </div>
</div>