@extends('layouts.lfi')

@section('content')
<h2 align="center">Asset</h2>

<!-- Script utk mengganti halaman -->
<!--
    <a id="tmp_link" data-toggle="pill" href="#{{ $redi }}">#{{ $redi }}</a>
    <script type="text/javascript">
        window.onload = function() {
                document.getElementById('tmp_link').click();
        }
    </script>
-->

<!-- Script AJAX -->
<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML = this.responseText;
    }
  };
  xhttp.open("POST", "{{ url('ajax/comment/create') }}", true);
  xhttp.send();
}
</script>


<div class="row">
    <div class="col-md-1">
        <a class="btn btn-default" href="{{ url('asset') }}"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
    </div>
    <div class="col-md-2 col-md-offset-9">
        <a class="btn btn-primary" href="{{ url('asset/'.$asset_id.'/details') }}">View Details</a>
    </div>
</div><br>

<div class="form-horizontal">
    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_id">Asset No: *</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="asset_id" value="{{ $asset_data->asset_no }}" disabled>
        </div>

        <label class="control-label col-sm-3">Asset Priority: *</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                <option>{{ $asset_data->priority_id }}</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Asset Status: *</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                <option>{{ $asset_data->status_id }}</option>
            </select>
        </div>

        <label class="control-label col-sm-3">Location:</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                @foreach($locations as $loc)
                    @if($asset_data->location_id == $loc->id)
                        <option>{{ $loc->note }}</option>
                        @break
                    @endif
                @endforeach
            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2">Asset Category: *</label>
        <div class="col-sm-3">
            <select class="form-control" disabled>
                @foreach($categories as $cat)
                    @if($asset_data->type_id == $cat->id)
                        <option>{{ $cat->note }}</option>
                        @break
                    @endif
                @endforeach
            </select>
        </div>

        <label class="control-label col-sm-3">Serial No:</label>
        <div class="col-sm-3">
            <textbox type="text" class="form-control" disabled>{{ $asset_data->serial_no }}</textbox>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="asset_note">Notes: *</label>
        <div class="col-sm-9">
            <textbox class="form-control" disabled>{{ $asset_data->note }}</textbox>
        </div>
    </div>
</div>

<ul class="nav nav-tabs">
    <li class="active"><a data-toggle="pill" href="#comment">Comment</a></li>
    <li><a data-toggle="pill" href="#contract">Contract</a></li>
    <li><a data-toggle="pill" href="#depreciation">Depreciation</a></li>
    <li><a data-toggle="pill" href="#downtime">Downtime</a></li>
    <li><a data-toggle="pill" href="#meter">Meter</a></li>
    <li><a data-toggle="pill" href="#part">Part</a></li>
</ul><br>

<div class="tab-content">
    <div id="comment" class="tab-pane fade in active">

        <div class="tab-content">
            <div id="comment_index" class="tab-pane fade in active">
                <div class="col-md-4">
                    <a class="btn btn-success" data-toggle="pill" href="#comment_new"><span class="glyphicon glyphicon-plus"></span> Add</a>
                </div>
                <table id="example" width="100%" class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Date Time</th>
                        <th>Comment</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($comment_datas as $comment_data)
                    <tr id="{{ $comment_data->id }}">
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $comment_data->modified_time }}</td>
                        <td>{{ $comment_data->comment }}</td>
                        <td align="center">
                            <button class="btn btn-danger" onclick="showModal(this)" data-toggle="modal" data-target="#modal-konfirmasi"><span class="glyphicon glyphicon-trash"></span></button>
                            <button class="btn btn-primary" onclick="editData(this)"><span class="glyphicon glyphicon-edit"></span></button>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
                </table>
            </div>

            <div id="comment_new" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/new') }}">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <h4 align="center">Tambah Komentar Asset</h4>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-6">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Comment:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" placeholder="Tuliskan komentar.." required></textarea>
                        </div>
                    </div>
                </form>
            </div>

            <div id="comment_edit" class="tab-pane fade">
                <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/commit_edit') }}">
                    <input type="hidden" name="id" value="@if(!empty($comment_data)){{ $comment_data->id }}@endif">
                    @csrf

                    <div class="row">
                        <div class="col-md-12">
                            <h2 align="center">Edit Komentar Asset</h2>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-edit"></span> Update</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" required>@if(!empty($comment_data)){{ $comment_data->comment }}@endif</textarea>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Delete Data Modal -->
        <div id="modal-konfirmasi" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">

            <!-- Delete Data Form -->
            <form class="form-horizontal" method="POST" action="{{ url('asset/'.$asset_id.'/comment/delete') }}">
                <input type="hidden" id="comment_modal_id" name="id" value=""></input>
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
                        <label class="control-label col-sm-4" for="comment_modal_comment">Komentar:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="comment_modal_comment"></label>
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
        <form method="POST" action="{{ url('asset/'.$asset_id.'/comment/edit') }}" id="comment_form_edit" style="visibility: hidden;">
            <input type="hidden" id="e_data_id" name="id" value="">
            @csrf
        </form>

        <script type="text/javascript">
            function showModal(doc) {
                var tr = doc.parentNode.parentNode;
                
                var id = tr.id;
                var comment = tr.childNodes[5].innerHTML;
                
                document.getElementById('comment_modal_id').value = id;
                document.getElementById('comment_modal_comment').innerHTML = comment;
            }
            function editData(doc) {
                var tr = doc.parentNode.parentNode;
                var id = tr.id;
                var form_edit = document.getElementById('comment_form_edit');
                var edit_data_id = document.getElementById('e_data_id');
                edit_data_id.value = id;
                form_edit.submit();
            }
        </script>
    </div>

    <div id="contract" class="tab-pane fade">

    </div>

    <div id="depreciation" class="tab-pane fade">

    </div>

    <div id="downtime" class="tab-pane fade">

    </div>

    <div id="meter" class="tab-pane fade">

    </div>

    <div id="part" class="tab-pane fade">

    </div>
</div>

@endsection