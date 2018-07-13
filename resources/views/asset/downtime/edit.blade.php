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
<form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/downtime/commit_edit') }}">
<input type="hidden" name="id" value="{{ $data->id }}">
@csrf

<div class="row">
    <div class="col-md-12">
        <h2 align="center">Edit Asset Downtime</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/downtime') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="col-md-4" align="center">
        {{ $asset_note }}
    </div>
    <div class="col-md-2 col-md-offset-2">
        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Edit</button>
    </div>
</div><br>

<div class="form-group">
    <label class="control-label col-sm-3" for="ad_st_date">Start Time: *</label>
    <div class="col-sm-3">
        <input type="date" class="form-control" id="ad_st_date" name="st_date" value="{{ $data->start_time[0] }}" required>
    </div>
    <div class="col-sm-2">
        <input type="time" class="form-control" id="ad_st_time" name="st_time" value="{{ $data->start_time[1] }}" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_et_date">End Time: *</label>
    <div class="col-sm-3">
        <input type="date" class="form-control" id="ad_et_date" name="et_date" value="{{ $data->end_time[0] }}" required>
    </div>
    <div class="col-sm-2">
        <input type="time" class="form-control" id="ad_et_time" name="et_time" value="{{ $data->end_time[1] }}" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_hours">Hours: *</label>
    <div class="col-sm-2">
        <input type="text" class="form-control" id="ad_hours" name="hours" value="{{ $data->hours }}" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_downtime">Downtime: *</label>
    <div class="col-sm-3">
        <select class="form-control" id="ad_downtime" name="downtime">
            <option @if($data->downtime_type_id == 'Emergency') selected @endif>Emergency</option>
            <option @if($data->downtime_type_id == 'Planned Maintenance') selected @endif>Planned Maintenance</option>
            <option @if($data->downtime_type_id == 'Project') selected @endif>Project</option>
            <option @if($data->downtime_type_id == 'Other') selected @endif>Other</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_dcause">Downtime Cause: *</label>
    <div class="col-sm-3">
        <select class="form-control" id="ad_dcause" name="dcause">
            <option @if($data->downtime_cause_id == 'Operation') selected @endif>Operation</option>
            <option @if($data->downtime_cause_id == 'Maintenance') selected @endif>Maintenance</option>
            <option @if($data->downtime_cause_id == 'Other') selected @endif>Other</option>
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3">Work Order: *</label>
    <div class="col-sm-3">
        <input type="hidden" id="ad_wo" name="wo" value="{{ $data->wo_id }}">
        <select class="form-control" onchange="document.getElementById('ad_wo').value = getID(this);">
            @foreach($wos as $wo)
                <option id="{{ $wo->id }}" @if($data->wo_id == $wo->id) selected @endif>{{ $wo->note }}</option>
            @endforeach
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3">Reported by: *</label>
    <div class="col-sm-3">
        <input type="hidden" id="ad_user" name="user" value="{{ $data->reported_by_id }}">
        <select class="form-control" onchange="document.getElementById('ad_user').value = getID(this);">
            @foreach($users as $user)
                <option id="{{ $user->id }}" @if($data->reported_by_id == $user->id) selected @endif>{{ $user->full_name }}</option>
            @endforeach
        </select>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ad_ra_date">Reported at: *</label>
    <div class="col-sm-3">
        <input type="date" class="form-control" id="ad_ra_date" name="ra_date" value="{{ $data->reported_time[0] }}" required>
    </div>
    <div class="col-sm-2">
        <input type="time" class="form-control" id="ad_ra_time" name="ra_time" value="{{ $data->reported_time[1] }}" required>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-3" for="ad_note">Note:</label>
    <div class="col-sm-6">
        <textarea class="form-control" id="ad_note" name="note" placeholder="Tuliskan catatan..">{{ $data->note }}</textarea>
    </div>
</div>

</form>
@endsection