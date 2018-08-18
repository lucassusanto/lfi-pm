@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Type</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="{{ url('asset/type/new') }}"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
</div>

<table id="asset_type_table" width="100%" class="table">
<thead>
    <tr>
        <th>Type</th>
        <th>Note</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach($datas as $data)
    <tr id="{{ $data->id }}">
        <td>{{ $data->type }}</td>
        <td>{{ $data->note }}</td>
        <td align="center">
            <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
            <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
        </td>
    </tr>
    @endforeach
</tbody>
</table>

<!-- Delete Data Modal -->
<div id="modal-konfirmasi" class="modal fade" role="dialog">
<div class="modal-dialog">
    <div class="modal-content">

    <!-- Delete Data Form -->
    <form class="form-horizontal" method="POST" action="{{ url('asset/type/delete') }}">
        <input type="hidden" id="del_type_id" name="id"></input>
        @csrf

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Konfirmasi</h4>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <div class="col-sm-12">
                    <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
                </div>
            </div>
        
            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-2" for="del_type_type">Type:</label>
                <div class="col-sm-4">
                    <label class="control-label" style="font-weight: normal;" id="del_type_type"></label>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-2" for="del_type_note">Note:</label>
                <div class="col-md-7">
                    <label class="control-label" style="font-weight: normal;" id="del_type_note"></label>
                </div>
            </div>

        </div>
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Delete</button>
        </div>
    </form>
    
    </div>
</div>
</div>

<!-- Edit Data Form -->
<form method="POST" action="{{ url('asset/type/edit') }}" id="edit_type" style="visibility: hidden;">
    <input type="hidden" id="edit_type_id" name="id">
    @csrf
</form>


<!-- Scripts -->
<script type="text/javascript">
$(function() {
    $('#asset_type_table').DataTable();
});

function showModal(doc) {
    var tr = doc.parentNode.parentNode;
    
    var id = tr.id;
    var type = tr.childNodes[1].innerHTML;
    var note = tr.childNodes[3].innerHTML;
    
    $('#del_type_id').val(id);
    $('#del_type_type').text(type);
    $('#del_type_note').text(note);
}

function editData(doc) {
    var id = doc.parentNode.parentNode.id;

    $('#edit_type_id').val(id);
    $('#edit_type').submit();
}
</script>
@endsection