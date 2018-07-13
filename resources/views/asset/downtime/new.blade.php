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

<div class="form-group">
    <label class="control-label col-sm-3" for="ad_st_date">Start Time: *</label>
    <div class="col-sm-2">
        <input type="date" class="form-control" id="ad_st_date" name="st_date" required>
    </div>
    <div class="col-sm-2">
        <input type="time" class="form-control" id="ad_st_time" name="st_time" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_et_date">End Time: *</label>
    <div class="col-sm-2">
        <input type="date" class="form-control" id="ad_et_date" name="et_date" required>
    </div>
    <div class="col-sm-2">
        <input type="time" class="form-control" id="ad_et_time" name="et_time" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_hours">Hours: *</label>
    <div class="col-sm-2">
        <input type="text" class="form-control" id="ad_hours" name="hours" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_downtime">Downtime: *</label>
    <div class="col-sm-3">
        <select class="form-control" id="ad_downtime" name="downtime">
            <option>Emergency</option>
            <option>Planned Maintenance</option>
            <option>Project</option>
            <option>Other</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_dcause">Downtime Cause: *</label>
    <div class="col-sm-3">
        <select class="form-control" id="ad_dcause" name="dcause">
            <option>Operation</option>
            <option>Maintenance</option>
            <option>Other</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3">Work Order: *</label>
    <div class="col-sm-6">
        <input type="hidden" id="ad_wo" name="wo" value="{{ $wos[0]->id }}">
        <select class="form-control" onchange="document.getElementById('ad_wo').value = getID(this);">
            @foreach($wos as $wo)
                <option id="{{ $wo->id }}">{{ $wo->note }}</option>
            @endforeach
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3">Reported by: *</label>
    <div class="col-sm-2">
        <input type="hidden" id="ad_user" name="user" value="{{ $users[0]->id }}">
        <select class="form-control" onchange="document.getElementById('ad_user').value = getID(this);">
            @foreach($users as $user)
                <option id="{{ $user->id }}">{{ $user->full_name }}</option>
            @endforeach
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_ra_date">Reported at: *</label>
    <div class="col-sm-2">
        <input type="date" class="form-control" id="ad_ra_date" name="ra_date" required>
    </div>
    <div class="col-sm-2">
        <input type="time" class="form-control" id="ad_ra_time" name="ra_time" required>
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