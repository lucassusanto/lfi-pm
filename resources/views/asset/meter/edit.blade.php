@extends('layouts.lfi')

@section('js')
<script type="text/javascript">
    function setID(doc) {
        var options = doc.options;
        return options[options.selectedIndex].id;
    }
</script>
@endsection

@section('content')
<form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/meter/commit_edit') }}">
     <input type="text" name="id" value="{{ $data->id }}">
    @csrf

    <div class="row">
        <div class="col-md-12">
            <h2 align="center">Tambah Asset Meter</h2>
        </div>
        <div class="col-md-4">
            <a class="btn btn-default" href="}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
        </div>
        <div class="col-md-4" align="center">
            <a href="">{{ $asset_note }}</a>
        </div>
        <div class="col-md-2 col-md-offset-2">
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
        </div>
    </div><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_no">Meter No:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="meter_no" name="no" placeholder="Meter No" value="{{ $data->meter_no }}" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_type">Type:</label>
        <div class="col-sm-3">
            <input type="text" id="meter_type" name="type" value="{{ $data->type_id }}">
            <select class="form-control" onchange="document.getElementById('meter_type').value = setID(this);">
                <option></option>
                @foreach($meter_type as $m_type)
                <option id="{{ $m_type->id }}" @if($data->type_id == $m_type->id) selected @endif>{{ $m_type->type }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_uom">Reading Unit:</label>
        <div class="col-sm-3">
            <input type="text" id="meter_uom" name="uom" value="{{ $data->reading_uom_id }}">
            <select class="form-control" onchange="document.getElementById('meter_uom').value = setID(this);">
                @foreach($meter_uom as $m_uom)
                <option id="{{ $m_uom->id }}" @if($data->reading_uom_id == $m_uom->id) selected @endif>{{ $m_uom->uom }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_rollup">Meter Rollup:</label>
        <div class="col-sm-3">
            <select class="form-control" id="meter_rollup" name="rollup">
                <option @if($data->rollup_type_id == 'None') selected @endif>None</option>
                <option @if($data->rollup_type_id == 'Rollup Change') selected @endif>Rollup Change</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_rr">Rollover Reading:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="meter_rr" name="rr" placeholder="Rollover Reading" value="{{ $data->rollover_reading }}" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_note">Note:</label>
        <div class="col-sm-6">
            <textarea class="form-control" id="meter_note" name="note" placeholder="Tuliskan catatan ..">{{ $data->note }}</textarea>
        </div>
    </div>

</form>
@endsection