@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Depreciation</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="{{ url('asset/'.$asset_id.'/depreciation/new') }}"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
    <div class="col-md-4" align="center">
        {{ $asset_note }}
    </div>
</div>

<table id="example" width="100%" class="table">
<thead>
    <tr>
        <th>#</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Depreciation Rate</th>
        <th>End Value</th>
        <th>Note</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach($datas as $data)
    <tr id="{{ $data->id }}">
        <td>{{ $loop->iteration }}</td>
        <td>{{ $data->start_date }}</td>
        <td>{{ $data->end_date }}</td>
        <td>{{ $data->depreciation_rate }}</td>
        <td>{{ $data->end_value }}</td>
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
    <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/depreciation/delete') }}">
        <input type="hidden" id="m_data_id" name="id" value=""></input>
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
                <label class="control-label col-sm-5" for="m_data_sd">Start Date:</label>
                <div class="col-md-6">
                    <label class="control-label text-left" style="font-weight: normal;" id="m_data_sd"></label>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-5" for="m_data_ed">End Date:</label>
                <div class="col-md-6">
                    <label class="control-label text-left" style="font-weight: normal;" id="m_data_ed"></label>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-5" for="m_data_dr">Depreciation Rate:</label>
                <div class="col-md-6">
                    <label class="control-label text-left" style="font-weight: normal;" id="m_data_dr"></label>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-5" for="m_data_ev">End Value:</label>
                <div class="col-md-6">
                    <label class="control-label text-left" style="font-weight: normal;" id="m_data_ev"></label>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-5" for="m_data_note">Note:</label>
                <div class="col-md-6">
                    <label class="control-label text-left" style="font-weight: normal;" id="m_data_note"></label>
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
<form method="POST" action="{{ url('asset/'.$asset_id.'/depreciation/edit') }}" id="form_edit" style="visibility: hidden;">
    <input type="hidden" id="e_data_id" name="id" value="">
    @csrf
</form>
@endsection


@section('js')
<script type="text/javascript">
function showModal(doc) {
    var tr = doc.parentNode.parentNode;

    var id = tr.id;
    var start_date = tr.childNodes[3].innerHTML;
    var end_date = tr.childNodes[5].innerHTML;
    var depreciation_rate = tr.childNodes[7].innerHTML;
    var end_value = tr.childNodes[9].innerHTML;
    var note = tr.childNodes[11].innerHTML;
    
    document.getElementById('m_data_id').value = id;
    document.getElementById('m_data_sd').innerHTML = start_date;
    document.getElementById('m_data_ed').innerHTML = end_date;
    document.getElementById('m_data_dr').innerHTML = depreciation_rate;
    document.getElementById('m_data_ev').innerHTML = end_value;
    document.getElementById('m_data_note').innerHTML = note;
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