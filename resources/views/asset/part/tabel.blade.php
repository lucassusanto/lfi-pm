@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Part</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="{{ url('asset/part/new') }}"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
</div>

<table id="example" width="100%" class="table">
    <thead>
        <tr>
            <th>Item</th>
            <th>Type</th>
            <th>Note</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach($datas as $data)
        <tr id="{{ $data->id }}">
            <td>{{$data->in_no }}</td>
            <td>{{ $data->type_id }}</td>
            <td>{{ $data->note }}</td>
            <td align="center">
                <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

<div id="modal-konfirmasi" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">

            <form class="form-horizontal" method="POST" action="{{ url('asset/part/delete') }}">
                <input type="hidden" id="id" name="id" value="">
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
                        <label class="control-label col-md-3 col-md-offset-2" for="item">Item:</label>
                        <div class="col-md-7">
                            <label class="control-label" style="font-weight: normal;" id="item"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-md-offset-2" for="type">Type:</label>
                        <div class="col-md-7">
                            <label class="control-label" style="font-weight: normal;" id="type"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-md-offset-2" for="note">Note:</label>
                        <div class="col-md-7">
                            <label class="control-label" style="font-weight: normal;" id="note"></label>
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

<form method="POST" action="{{ url('asset/part/edit') }}" id="edits" style="visibility: hidden;">
    <input type="hidden" id="ids" name="id" value="">
    @csrf
</form>

@endsection

@section('js')
<script type="text/javascript">
    function showModal(doc) {
        var tr = doc.parentNode.parentNode;

        var id = tr.id;
        var item = tr.childNodes[1].innerHTML;
        var type = tr.childNodes[3].innerHTML;
        var note = tr.childNodes[5].innerHTML;

        document.getElementById('id').value = id;
        document.getElementById('item').innerHTML = item;
        document.getElementById('type').innerHTML = type;
        document.getElementById('note').innerHTML = note;
    }

    function editData(doc) {
        var tr = doc.parentNode.parentNode;
        var id = tr.id;

        var form_edit = document.getElementById('edits');
        var edit_data_id = document.getElementById('ids');

        edit_data_id.value = id;

        form_edit.submit();
    }

</script>
@endsection