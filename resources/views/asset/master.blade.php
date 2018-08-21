@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset</h2>
    </div>
    <div class="col-md-2">
        <a class="btn btn-success" href="asset/new"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
</div>

<table id="asset_table" width="100%" height="100%" class="table">
    <thead>
        <tr>
            <!-- <th>ID</th> -->
            <th>Asset No</th>
            <th>Asset Status</th>
            <th>Asset Category</th>
            <th>Note</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach($datas as $data)
        <tr id="{{ $data->id }}">
            <td>{{ $data->asset_no }}</td>
            <td>{{ $data->status_id }}</td>
            <td>@if(!empty($data->category)){{ $data->category }}@else<i style="color: red">Asset type is missing</i>@endif</td>            
            <td>{{ $data->note }}</td>
            <td align="center">
                <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
                <a class="btn btn-default" href="asset/{{ $data->id }}"><span class="glyphicon glyphicon-eye-open"></span></a>
            </td>
        </tr> 
        @endforeach
    </tbody>
</table>

<!-- Modal -->
<div id="modal-konfirmasi" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">

            <form class="form-horizontal" method="POST" action="{{ url('asset/delete') }}">
                <input type="hidden" id="del_asset_id" name="id" value="">
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
                        <label class="control-label col-md-5" for="del_asset_no">Asset No:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_asset_no"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-5" for="del_asset_status">Asset Status:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_asset_status"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-5" for="del_asset_cat">Asset Category:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_asset_cat"></label>
                        </div>
                    </div>        
                    <div class="form-group">
                        <label class="control-label col-md-5" for="del_asset_notes">Notes:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_asset_notes"></label>
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
<form method="POST" action="{{ url('asset/edit') }}" id="edit_asset" style="visibility: hidden;">
    <input type="hidden" id="edit_asset_id" name="id">
    @csrf
</form>

@endsection


@section('js')
<script type="text/javascript">
$(function() {
    $('#asset_table').DataTable();
})

function showModal(doc) {
    var tr = doc.parentNode.parentNode;

    var id = tr.id;
    var no = tr.childNodes[1].innerHTML;
    var status = tr.childNodes[3].innerHTML;
    var cat = tr.childNodes[5].innerHTML;
    var notes = tr.childNodes[7].innerHTML;

    $('#del_asset_id').val(id);
    $('#del_asset_no').text(no);
    $('#del_asset_status').text(status);
    $('#del_asset_cat').text(cat);
    $('#del_asset_notes').text(notes);
}

function editData(doc) {
    var tr = doc.parentNode.parentNode;
    var id = tr.id;

    $('#edit_asset_id').val(id);
    $('#edit_asset').submit();
}
</script>
@endsection