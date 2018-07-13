@extends('layouts.lfi')

@section('content')
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Meter</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="{{ url('asset/'.$asset_id.'/meter/new') }}"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
    <div class="col-md-4" align="center">
        {{ $asset_note }}
    </div>
</div>

<table id="example" width="100%" height="100%" class="table">
    <thead>
        <tr>
            <th>Meter No</th>
            <th>Reading</th>
            <th>Time Taken</th>
            <th>Note</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach($datas as $data)
        <tr id="{{ $data->id }}">
            <td>{{ $data->meter_no }}</td>
            <td>{{ $data->reading }}</td>
            <td>{{ $data->time_taken }}</td>
            <td>{{ $data->note }}</td>
            <td align="center">
                <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
                <!-- <a href="{{ url('asset/view') }}" class="btn btn-default"><span class="glyphicon glyphicon-eye-open"></span></a> -->
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

            <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/meter/delete') }}">
                <input type="hidden" id="m_data_id" name="id" value="">
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
                        <label class="control-label col-md-5" for="m_data_no">Meter No.:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" style="font-weight: normal;" id="m_data_no"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-5" for="m_data_reading">Reading:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" style="font-weight: normal;" id="m_data_reading"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-5" for="m_data_timetaken">Time Taken:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" style="font-weight: normal;" id="m_data_timetaken"></label>
                        </div>
                    </div>        
                    <div class="form-group">
                        <label class="control-label col-md-5" for="m_data_note">Note:</label>
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


<form method="POST" action="{{ url('asset/'.$asset_id.'/meter/edit') }}" id="form_edit" style="visibility: hidden;">
    <input type="hidden" id="e_data_id" name="id" value="">
    @csrf
</form>

@endsection


@section('js')
<script type="text/javascript">
    function showModal(doc) {
        var tr = doc.parentNode.parentNode;

        var id = tr.id;
        var meter_no = tr.childNodes[1].innerHTML;
        var reading = tr.childNodes[3].innerHTML;
        var time_taken = tr.childNodes[5].innerHTML;
        var note = tr.childNodes[7].innerHTML;

        document.getElementById('m_data_id').value = id;
        document.getElementById('m_data_no').innerHTML = meter_no;
        document.getElementById('m_data_reading').innerHTML = reading;
        document.getElementById('m_data_timetaken').innerHTML = time_taken;
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