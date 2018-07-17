@extends('layouts.lfi')

@section('content')
<h2 align="center">Asset</h2>

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
                <div class="col-md-3">
                    <a class="btn btn-success" data-toggle="pill" href="#comment_new"><span class="glyphicon glyphicon-plus"></span> Add</a>
                    <a class="btn btn-primary" onclick="getComment()"><span class="glyphicon glyphicon-repeat"></span></a>

                    <a id="btn_comment_edit" class='btn btn-primary' data-toggle='pill' href='#comment_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
                </div>
                <table id="tabel_comment" width="100%" class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Date Time</th>
                            <th>Comment</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody id="tbody_comment">
                    </tbody>
                </table>
            </div>

            <div id="comment_new" class="tab-pane fade">
                <div class="form-horizontal">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 align="center">Tambah Komentar Asset</h4>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" id="btn_comment_index" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-6">
                            <button onclick="addComment();" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="asset_comment">Comment:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="asset_comment" name="comment" placeholder="Tuliskan komentar.." required></textarea>
                        </div>
                    </div>
                </div>
            </div>

            <div id="comment_edit" class="tab-pane fade">
                <div class="form-horizontal">
                    <input type="hidden" id="comment_edit_id" value="">

                    <div class="row">
                        <div class="col-md-12">
                            <h4 align="center">Edit Komentar Asset</h4>
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-default" data-toggle="pill" href="#comment_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                        </div>
                        <div class="col-md-2 col-md-offset-6">
                            <button type="submit" class="btn btn-success" onclick="updateComment()"><span class="glyphicon glyphicon-edit"></span> Update</button>
                        </div>
                    </div><br>

                    <div class="form-group">
                        <label class="control-label col-sm-3" for="comment_edit_comment">Note:</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" id="comment_edit_comment" name="comment" required></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Delete Data Modal -->
        <div id="modal-konfirmasi" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">

            <div class="form-horizontal">
                <input type="hidden" id="comment_modal_id" name="id" value=""></input>

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
                    <button id="btn_submit_del" class="btn btn-danger" class="close" data-dismiss="modal" onclick="delComment()"><span class="glyphicon glyphicon-trash"></span> Delete</button>
                </div>
            </div>
            </div>
        </div>
        </div>
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


<script>
$(function() {
    getComment();
});

function addComment() {
    $.post('{{ url('ajax/comment/create') }}', {
        asset_id:   {{ $asset_id }},
        comment:    $('#asset_comment').val()
	},
    function(data, textStatus) {
        getComment();
        $('#btn_comment_index').click();
        $('#asset_comment').val('');
    });
}

function delComment() {
    $.post('{{ url('ajax/comment/del') }}', {
        comment_id: $('#comment_modal_id').val()
	},
    function(data, textStatus) {
		getComment();
        $('#comment_modal_id').val('');
    });
}

function getComment() {
    $.post('{{ url('ajax/comment/load') }}', {
        asset_id:   {{ $asset_id }}
	},
    function(data, textStatus) {
        if(textStatus == 'success') {            
            var bd = document.getElementById('tabel_comment').getElementsByTagName('tbody')[0];
            var comments = data.datas;

            while (bd.firstChild) bd.removeChild(bd.firstChild);

            for(var i = 0, len = comments.length; i < len; i++) {
                // Append Data
                var row = bd.insertRow(0);
                row.id = comments[i].id;

                var no = row.insertCell(0);
                var dt = row.insertCell(1);
                var comment = row.insertCell(2);
                var action = row.insertCell(3);

                no.innerHTML = i + 1;
                dt.innerHTML = comments[i].modified_time;
                comment.innerHTML = comments[i].comment;
                action.innerHTML =
                    "<button class='btn btn-danger' onclick='showModal(this)' data-toggle='modal' data-target='#modal-konfirmasi'><span class='glyphicon glyphicon-trash'></span></button><button class='btn btn-primary' onclick='editData(this)'><span class='glyphicon glyphicon-edit'></span></button>";
            }
        }
    });
}

function showModal(doc) {
    var tr = doc.parentNode.parentNode;
    var id = tr.id;
    var comment = tr.childNodes[2].innerHTML;

    $('#comment_modal_id').val(id);
    $('#comment_modal_comment').text(comment);
}

function editData(doc) {
    var tr = doc.parentNode.parentNode;
    var id = tr.id;

    $.post('{{ url('ajax/comment/show_edit') }}', {
        comment_id: id
	},
    function(data, textStatus) {
        $('#comment_edit_id').val(id);
        $('#comment_edit_comment').val(data.datas.comment);

        $('#btn_comment_edit').click();
    });
}

function updateComment() {
    $.post('{{ url('ajax/comment/commit_edit') }}', {
        comment_id:   $('#comment_edit_id').val(),
        comment_data: $('#comment_edit_comment').val()
	},
    function(data, textStatus) {
        getComment();
        $('#btn_comment_index').click();
        $('#comment_edit_comment').val('');
    });
}
</script>
@endsection