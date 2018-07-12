@extends('layouts.lfi')

@section('content')
<form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/downtime/new') }}">
@csrf
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Tambah Asset Downtime</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/downtime') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="col-md-4" align="center">
        {{ $asset_note }}
    </div>
    <div class="col-md-2 col-md-offset-2">
        <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
    </div>
</div><br>

<!-- start time (input: date time)
end time (input: date time)
hours
downtime: emergency, planned maintenance, project, other
downtime cause: operation, maintenence, other
Wo no -> work order
reported by -> users
reported at (input: date time)
note -->

<div class="form-group">
    <label class="control-label col-sm-3" for="ad_sd">Start Time: *</label>
    <div class="col-sm-2">
        <input type="date" class="form-control" id="ad_sd" name="sd" required>
    </div>
    <div class="col-sm-2">
        <input type="time" class="form-control" id="ad_sd" name="sd" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_ed">End Time: *</label>
    <div class="col-sm-2">
        <input type="date" class="form-control" id="ad_ed" name="ed" required>
    </div>
    <div class="col-sm-2">
        <input type="time" class="form-control" id="ad_sd" name="sd" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_rate">Hours: *</label>
    <div class="col-sm-2">
        <input type="text" class="form-control" id="ad_rate" name="rate" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_sv">Downtime: *</label>
    <div class="col-sm-3">
        <select class="form-control">
            <option>Emergency</option>
            <option>Planned Maintenance</option>
            <option>Project</option>
            <option>Other</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_ev">Downtime Cause: *</label>
    <div class="col-sm-3">
        <select class="form-control">
            <option>Operation</option>
            <option>Maintenance</option>
            <option>Other</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_note">Work Order:</label>
    <div class="col-sm-6">

        <!-- DEBUGGING -->
        <input type="text" id="a" name="wo" value="">
            <select class="form-control" onchange="document.getElementById('asset_manufacturer').value = getID(this);" >
                <option></option>
                @foreach($wos as $wo)
                    <option id="{{ $wo->id }}">{{ $wo->name }}</option>
                @endforeach
            </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_ev">Reported by: *</label>
    <div class="col-sm-2">

        <!-- DEBUGGING -->
        <input type="text" id="asset_manufacturer" name="manufacturer" value="{{ $users->id }}">
        <select class="form-control" onchange="document.getElementById('asset_manufacturer').value = getID(this);" >
            @foreach($users as $user)
                <option id="{{ $user->id }}">{{ $user->name }}</option>
            @endforeach
        </select>

    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_note">Reported at:</label>
    <div class="col-sm-2">
        <input type="date" class="form-control" id="ad_sd" name="sd" required>
    </div>
    <div class="col-sm-2">
        <input type="time" class="form-control" id="ad_sd" name="sd" required>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-3" for="ad_note">Note:</label>
    <div class="col-sm-4">
        <textarea class="form-control" id="ad_note" name="note" placeholder="Tuliskan catatan.."></textarea>
    </div>
</div>

</form>
@endsection