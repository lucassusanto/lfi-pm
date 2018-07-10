@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="asset/new"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
</div>

<table id="example" width="100%" height="100%" class="table">
<thead>
    <tr>
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
        <td>{{ $data->asset_type_note }}</td>
        <td>{{ $data->note }}</td>
        <td align="center">
            <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
            <a href="{{ url('asset/edit') }}" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span></a>
            <a href="{{ url('asset/view') }}" class="btn btn-default"><span class="glyphicon glyphicon-eye-open"></span></a>
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

            <form class="form-horizontal" method="POST" action="{{ url('asset/new') }}">
                <input type="hidden" id="m_data_id" value="">
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
                        <label class="control-label col-sm-3 col-sm-offset-2" for="m_data_no">Asset No:</label>
                        <div class="col-sm-4">
                            <p class="control-label col-sm-3" id="m_data_no"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3 col-sm-offset-2" for="m_data_type">Type:</label>
                        <div class="col-sm-4">
                            <p class="control-label col-sm-3" id="m_data_type"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3 col-sm-offset-2" for="m_data_status">Asset Status:</label>
                        <div class="col-sm-4">
                            <p class="control-label col-sm-3" id="m_data_status"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3 col-sm-offset-2" for="m_data_cat">Asset Category:</label>
                        <div class="col-sm-4">
                            <p class="control-label col-sm-3" id="m_data_cat"></p>
                        </div>
                    </div>        
                    <div class="form-group">
                        <label class="control-label col-sm-3 col-sm-offset-2" for="m_data_notes">Notes:</label>
                        <div class="col-sm-4">
                            <p class="control-label col-sm-3" id="m_data_notes"></p>
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
@endsection


@section('js')
<script type="text/javascript">
function showModal(doc) {
    var tr = doc.parentNode.parentNode;

    var id = tr.id;
    var no = tr.childNodes[1].innerHTML;
    var type = tr.childNodes[3].innerHTML;
    var status = tr.childNodes[5].innerHTML;
    var cat = tr.childNodes[7].innerHTML;
    var notes = tr.childNodes[9].innerHTML;
    
    document.getElementById('m_data_id').value = id;
    document.getElementById('m_data_no').innerHTML = no;
    document.getElementById('m_data_type').innerHTML = type;
    document.getElementById('m_data_status').innerHTML = status;
    document.getElementById('m_data_cat').innerHTML = cat;
    document.getElementById('m_data_notes').innerHTML = notes;
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