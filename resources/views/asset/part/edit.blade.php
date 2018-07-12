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
<form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/part/commit_edit') }}">
    <input type="hidden" name="id" value="{{ $asset_part->id }}">
    @csrf

    <div class="row">
        <div class="col-md-12">
            <h2 align="center">Edit Asset Part</h2>
        </div>
        <div class="col-md-4">
            <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/part') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
        </div>
        <div class="col-md-4" align="center">
            {{ $asset_note }}
        </div>
        <div class="col-md-2 col-md-offset-2">
            <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Edit</button>
        </div>
    </div><br>

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Item:</label>
        <div class="col-sm-3">
            <input type="hidden" id="inventory" name="item" value="{{ $asset_part->in_id }}">
            <select class="form-control" onchange="document.getElementById('inventory').value = setID(this);" >
                <option></option>
                @foreach($item as $item)
                <option id="{{ $item->id }}" @if($asset_part->in_id == $item->id) selected @endif>{{ $item->in_no }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Type:</label>
        <div class="col-sm-3">
            <select class="form-control" id="type" name="type">
                <option @if($asset_part->type_id == 'Major') selected @endif>Major</option>
                <option @if($asset_part->type_id == 'Routine') selected @endif>Routine</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">QTY:</label>
        <div class="col-sm-3">
            <input type="number" class="form-control" id="qty" name="qty" placeholder="qty" value="{{ $asset_part->qty }}" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Weight UOM:</label>
        <div class="col-sm-3">
            <input type="hidden" id="uom" name="weight_uom" value="{{ $asset_part->uom_id }}">
            <select class="form-control" onchange="document.getElementById('uom').value = setID(this);">
                <option></option>
                @foreach($weight_uom as $weight_uom)
                <option id="{{$weight_uom->id}}" @if($asset_part->uom_id == $weight_uom->id) selected @endif>{{ $weight_uom->uom }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="notes">Notes:</label>
        <div class="col-sm-6">
            <textarea class="form-control" id="notes" name="notes" placeholder="Tuliskan catatan ..">{{ $asset_part->note }}</textarea>
        </div>
    </div>
</form>
@endsection