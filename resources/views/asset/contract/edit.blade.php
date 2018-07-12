@extends('layouts.lfi')

@section('content')
<form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/contract/commit_edit') }}">
<input type="hidden" name="id" value="{{ $data->id }}">
@csrf

<div class="row">
    <div class="col-md-12">
        <h2 align="center">Edit Kontrak Asset</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/contract') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="col-md-4" align="center">
        {{ $asset_note }}
    </div>
    <div class="col-md-2 col-md-offset-2">
        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Edit</button>
    </div>
</div><br>

<!-- view: contract (fk), status (valid, expired, canceled), note, start date, end date, comment -->

<div class="form-group">
    <label class="control-label col-sm-3" for="ac_contract">Contract: *</label>
    <div class="col-sm-3">
        <input type="hidden" id="ac_contract" name="contract" value="{{ $data->contract_id }}">
        <select class="form-control" onchange="document.getElementById('ac_contract').value = getID(this);">
            @foreach($contracts as $contract)
                <option id="{{ $contract->id }}" @if($data->contract_id == $contract->id) selected @endif>{{ $contract->contract }}</option>
            @endforeach
        </select>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-3" for="ac_status">Status: *</label>
    <div class="col-sm-3">
        <select class="form-control" id="ac_status" name="status">
            <option @if($data->status_id == 'Valid') selected @endif>Valid</option>
            <option @if($data->status_id == 'Expired') selected @endif>Expired</option>
            <option @if($data->status_id == 'Canceled') selected @endif>Canceled</option>
        </select>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-3" for="ac_sd">Start Date: *</label>
    <div class="col-sm-3">
        <input type="date" class="form-control" id="ac_sd" name="sd" value="{{ $data->start_date }}" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-3" for="ac_ed">End Date: *</label>
    <div class="col-sm-3">
        <input type="date" class="form-control" id="ac_ed" name="ed" value="{{ $data->end_date }}" required>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-3" for="ac_note">Note:</label>
    <div class="col-sm-6">
        <textarea class="form-control" id="ac_note" name="note">{{ $data->note }}</textarea>
    </div>
</div>

</form>
@endsection