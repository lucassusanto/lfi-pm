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
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Part</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-default" href="{{ url('asset/'.$asset_id.'/part') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
</div><br>


<form class="form-horizontal" onsubmit="setID()" method="POST" action="{{ url('asset/'.$asset_id.'/part/new') }}">
    @csrf

    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Item:</label>
        <div class="col-sm-3">
            <input type="hidden" id="inventory" name="item" value="">
            <select class="form-control" onchange="document.getElementById('inventory').value = setID(this);" >
                <option></option>
                @foreach($item as $item)
                <option id="{{ $item->id }}">{{ $item->in_no }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Type:</label>
        <div class="col-sm-3">
            <select class="form-control" id="type" name="type">
                <option>Major</option>
                <option>Routine</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">QTY:</label>
        <div class="col-sm-3">
            <input type="number" class="form-control" id="qty" name="qty" placeholder="qty" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Weight UOM:</label>
        <div class="col-sm-3">
            <input type="hidden" id="uom" name="weight_uom" value="">
            <select class="form-control" onchange="document.getElementById('uom').value = setID(this);">
                <option></option>
                @foreach($weight_uom as $weight_uom)
                <option id="{{ $weight_uom->id }}">{{ $weight_uom->uom }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="notes">Notes:</label>
        <div class="col-sm-6">
            <textarea class="form-control" id="notes" name="notes" placeholder="Tuliskan catatan .."></textarea>
        </div>
    </div>
    <br>


    <div class="form-group">
        <div class="col-sm-4 col-sm-offset-4">
            <button class="btn btn-danger"><span class="glyphicon glyphicon-trash" ></span> Delete</button>
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            <button class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> Edit</button>
        </div>
    </div>
</form>
@endsection