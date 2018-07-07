@extends('layouts.lfi')

@section('content')
<!-- Script -->
<script type="text/javascript">
    function satu() {
        
    }
</script>


<!-- Content -->
<div class="row">
    <div class="col-md-12">
        <h2 align="center">Asset Type</h2>
    </div>
    <div class="col-md-4">
        <a class="btn btn-success" href="{{ url('asset/type/new') }}"><span class="glyphicon glyphicon-plus"></span> Add</a>
    </div>
</div>

<table id=example width="100%" class="table">
<thead>
    <tr>
        <th>Type</th>
        <th>Note</th>
        <th>Action</th>
    </tr>
</thead>
<tbody>
    @foreach($datas as $data)
    <tr>
        <td>{{ $data->type }}</td>
        <td>{{ $data->note }}</td>
        <td align="center">
            <button class="btn btn-danger" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
            <a href="{{ url('asset/type/edit') }}" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span></a>
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
        <input type="hidden" id="data_id" name="id">1</input>
        @csrf

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Konfirmasi</h4>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <h4 align="center">Apakah Anda ingin <span style="color: red;">menghapus</span> data ini?</h4>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-3" for="no">Type:</label>
                <input type="text" id="data_type" name="type" disabled></input>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-3 col-sm-offset-3" for="priority">Note:</label>
                <input type="text" id="data_note" name="note" disabled></input>
            </div>
        </div>    
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal">Cancel</button>
            <input type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Delete</input>
        </div>
    </form>

    </div>
</div>
</div>

@endsection