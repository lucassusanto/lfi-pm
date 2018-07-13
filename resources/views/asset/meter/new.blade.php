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
<form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/meter/new') }}">
    @csrf

    <div class="row">
        <div class="col-md-12">
            <h2 align="center">Tambah Asset Meter</h2>
        </div>
        <div class="col-md-4">
            <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/meter') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
        </div>
        <div class="col-md-4" align="center">
            <!-- <a href="">{{ $asset_note }}</a> -->
        </div>
        <div class="col-md-2 col-md-offset-2">
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
        </div>
    </div><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_no">Meter No:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="meter_no" name="no" placeholder="Meter No" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_type">Type:</label>
        <div class="col-sm-3">
            <input type="hidden" id="meter_type" name="type" value="">
            <select class="form-control" onchange="document.getElementById('meter_type').value = setID(this);">
                <option></option>
                @foreach($meter_type as $m_type)
                <option id="{{ $m_type->id }}">{{ $m_type->type }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_uom">Reading Unit:</label>
        <div class="col-sm-3">
            <input type="hidden" id="meter_uom" name="uom" value="">
            <select class="form-control" onchange="document.getElementById('meter_uom').value = setID(this);">
                <option></option>
                @foreach($meter_uom as $m_uom)
                <option id="{{ $m_uom->id }}">{{ $m_uom->uom }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_rollup">Meter Rollup:</label>
        <div class="col-sm-3">
            <select class="form-control" id="meter_rollup" name="rollup">
                <option>None</option>
                <option>Rollup Change</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_rr">Rollover Reading:</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="meter_rr" name="rr" placeholder="Rollover Reading" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="meter_note">Note:</label>
        <div class="col-sm-6">
            <textarea class="form-control" id="meter_note" name="note" placeholder="Tuliskan catatan .."></textarea>
        </div>
    </div>

</form>
@endsection