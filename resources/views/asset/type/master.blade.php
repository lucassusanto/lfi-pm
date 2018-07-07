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

<table id="table_type" width="100%" class="table">
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
            <button class="btn btn-danger" onclick="modifyModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
            <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
        </td>
    </tr>
    @endforeach
</tbody>
</table>


<!-- Modal -->
<div id="modal-konfirmasi" class="modal fade" role="dialog">
<div class="modal-dialog">
    <div class="modal-content">

    <form class="form-horizontal" method="POST" action="{{ url('asset/type/delete') }}">
        <input type="hidden" id="m_data_id" name="id" value=""></input>
        @csrf

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Konfirmasi</h4>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-2" for="m_data_type">Type:</label>
                <div class="col-sm-4">
                    <label id="m_data_type"></label>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-2" for="m_data_note">Note:</label>
                <div class="col-sm-4">
                    <label id="m_data_note"></label>
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


<!-- To Edit Data Form -->
<form method="POST" action="{{ url('asset/type/edit') }}" id="form_edit" style="visibility: hidden;">
    <input type="hidden" id="e_data_id" name="id" value="">
    @csrf
</form>
@endsection


@section('js')
<script type="text/javascript">
function modifyModal(doc) {
    var tr = doc.parentNode.parentNode;
    var id = tr.id;
    var type = tr.childNodes[1].innerHTML;
    var note = tr.childNodes[3].innerHTML;
    
    var modal_data_id = document.getElementById('m_data_id');
    var modal_data_type = document.getElementById('m_data_type');
    var modal_data_note = document.getElementById('m_data_note');

    modal_data_id.value = id;
    modal_data_type.innerHTML = type;
    modal_data_note.innerHTML = note;
}

function editData(doc) {
    var tr = doc.parentNode.parentNode;
    var id = tr.id;

    var form_edit = document.getElementById('form_edit');
    var edit_data_id = document.getElementById('e_data_id');

    edit_data_id.value = id;

    form_edit.submit();
}
</script>
@endsection