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
    <li class="active"><a onclick="getComment()" data-toggle="pill" href="#comment_index">Comment</a></li>
    <li><a onclick="getContract()" data-toggle="pill" href="#contract_index">Contract</a></li>
    <li><a onclick="getDepreciation()" data-toggle="pill" href="#depreciation_index">Depreciation</a></li>
    <li><a onclick="getDowntime()" data-toggle="pill" href="#downtime_index">Downtime</a></li>
    <li><a onclick="getMeter()" data-toggle="pill" href="#meter_index">Meter</a></li>
    <li><a onclick="getPart()" data-toggle="pill" href="#part_index">Part</a></li>
</ul><br>

<div class="tab-content">
    <!-- Comment -->
    <div id="comment_index" class="tab-pane fade in active">
        <div class="col-md-3">
            <a class="btn btn-success" data-toggle="pill" href="#comment_add"><span class="glyphicon glyphicon-plus"></span> Add</a>
            <a class="btn btn-primary" onclick="getComment()"><span class="glyphicon glyphicon-repeat"></span></a>
            <a id="btn_comment_edit" class='btn btn-primary' data-toggle='pill' href='#comment_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
        </div>
        
        <table id="comment_table" width="100%" class="table">
            <thead>
                <tr>
                    <th>ID</th>
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
    <!-- Add Comment Form -->
    <div id="comment_add" class="tab-pane fade">
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
                <label class="control-label col-sm-3" for="add_comment_data">Comment:</label>
                <div class="col-sm-6">
                    <textarea class="form-control" id="add_comment_data" name="comment" placeholder="Tuliskan komentar.." required></textarea>
                </div>
            </div>
        </div>
    </div>
    <!-- Edit Comment Form -->
    <div id="comment_edit" class="tab-pane fade">
        <div class="form-horizontal">
            <input type="hidden" id="edit_comment_id" value="">

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
                <label class="control-label col-sm-3" for="edit_comment_data">Note:</label>
                <div class="col-sm-6">
                    <textarea class="form-control" id="edit_comment_data" name="comment" required></textarea>
                </div>
            </div>
        </div>
    </div>

    <!-- Contract -->
    <div id="contract_index" class="tab-pane fade">
        <div class="col-md-3">
            <a class="btn btn-success" data-toggle="pill" href="#contract_add"><span class="glyphicon glyphicon-plus"></span> Add</a>
            <a class="btn btn-primary" onclick="getContract()"><span class="glyphicon glyphicon-repeat"></span></a>
            <a id="btn_contract_edit" class='btn btn-primary' data-toggle='pill' href='#contract_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
        </div>
        
        <table id="contract_table" width="100%" class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>#</th>
                    <th>Date Time</th>
                    <th>Contract</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="tbody_contract">
            </tbody>
        </table>
    </div>
    <!-- Add Contract Form -->
    <div id="contract_add" class="tab-pane fade">
        <div class="form-horizontal">
            <div class="row">
                <div class="col-md-12">
                    <h4 align="center">Tambah Komentar Asset</h4>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-default" id="btn_contract_index" data-toggle="pill" href="#contract_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                </div>
                <div class="col-md-2 col-md-offset-6">
                    <button onclick="addContract();" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
                </div>
            </div><br>

            <div class="form-group">
                <label class="control-label col-sm-3" for="add_contract_data">Contract:</label>
                <div class="col-sm-6">
                    <textarea class="form-control" id="add_contract_data" name="contract" placeholder="Tuliskan komentar.." required></textarea>
                </div>
            </div>
        </div>
    </div>
    <!-- Edit Contract Form -->
    <div id="contract_edit" class="tab-pane fade">
        <div class="form-horizontal">
            <input type="hidden" id="edit_contract_id" value="">

            <div class="row">
                <div class="col-md-12">
                    <h4 align="center">Edit Komentar Asset</h4>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-default" data-toggle="pill" href="#contract_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
                </div>
                <div class="col-md-2 col-md-offset-6">
                    <button type="submit" class="btn btn-success" onclick="updateContract()"><span class="glyphicon glyphicon-edit"></span> Update</button>
                </div>
            </div><br>

            <div class="form-group">
                <label class="control-label col-sm-3" for="edit_contract_data">Note:</label>
                <div class="col-sm-6">
                    <textarea class="form-control" id="edit_contract_data" name="contract" required></textarea>
                </div>
            </div>
        </div>
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

<!-- Delete Comment Modal -->
<div id="comment_del" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="form-horizontal">
                <input type="hidden" id="del_comment_id" name="id" value=""></input>
                <!-- Header -->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Konfirmasi</h4>
                </div>
                <!-- Body -->
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="del_comment_data">Komentar:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_comment_data"></label>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-danger" class="close" data-dismiss="modal" onclick="delComment()"><span class="glyphicon glyphicon-trash"></span> Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Delete Contract Modal -->
<div id="contract_del" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="form-horizontal">
                <input type="hidden" id="del_contract_id" name="id" value=""></input>
                <!-- Header -->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Konfirmasi</h4>
                </div>
                <!-- Body -->
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4 align="center">Apakah Anda yakin untuk <span style="color: red;">menghapus</span> data ini?</h4>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="del_contract_data">Kontrak:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_contract_data"></label>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-danger" class="close" data-dismiss="modal" onclick="delContract()"><span class="glyphicon glyphicon-trash"></span> Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection


@section('js')
<script>
// --------------------------- Comment AJAX ---------------------------
$(function() {
    var comment_table = $('#comment_table').DataTable({
        "order": [[ 2, "desc" ]]    // Sort dari tgl terbaru
    });

    comment_table.columns(0).visible(false);
    getComment();
});

function addComment() {
    $.post('{{ url('ajax/comment/create') }}', {
        asset_id:   {{ $asset_id }},
        comment:    $('#add_comment_data').val()
	},
    function(data, textStatus) {
        getComment();
        $('#btn_comment_index').click();
        $('#add_comment_data').val('');
    });
}

function delComment() {
    $.post('{{ url('ajax/comment/del') }}', {
        comment_id: $('#del_comment_id').val()
	},
    function(data, textStatus) {
		getComment();
        $('#del_comment_id').val('');
    });
}

function getComment() {
    $.post('{{ url('ajax/comment/load') }}', {
        asset_id:   {{ $asset_id }}
	},
    function(data, textStatus) {
        if(textStatus == 'success') {            
            var bd = document.getElementById('comment_table').getElementsByTagName('tbody')[0];
            var comments = data.datas;

            var actionBtn = "<button class='btn btn-danger' onclick='showCommentModal(this)' data-toggle='modal' data-target='#comment_del'><span class='glyphicon glyphicon-trash'></span></button><button class='btn btn-primary' onclick='editCommentData(this)'><span class='glyphicon glyphicon-edit'></span></button>";

            var table = $('#comment_table').DataTable();
            table.clear();

            for(var i = 0, len = comments.length; i < len; i++) {
                table.row.add([comments[i].id, i + 1, comments[i].modified_time, comments[i].comment, actionBtn]);
            }

            table.draw();
        }
    });
}

function showCommentModal(doc) {
    var table = $('#comment_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];
    var comment = row_data[3];

    $('#del_comment_id').val(id);
    $('#del_comment_data').text(comment);
}

function editCommentData(doc) {
    var table = $('#comment_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];

    $.post('{{ url('ajax/comment/show_edit') }}', {
        comment_id: id
	},
    function(data, textStatus) {
        $('#edit_comment_id').val(id);
        $('#edit_comment_data').val(data.datas.comment);

        $('#btn_comment_edit').click();
    });
}

function updateComment() {
    $.post('{{ url('ajax/comment/commit_edit') }}', {
        comment_id:   $('#edit_comment_id').val(),
        comment_data: $('#edit_comment_data').val()
	},
    function(data, textStatus) {
        getComment();
        $('#btn_comment_index').click();
        $('#edit_comment_data').val('');
    });
}


// --------------------------- Contract AJAX (DEBUGGING) ---------------------------
function addContract() {
    $.post('{{ url('ajax/contract/create') }}', {
        asset_id:   {{ $asset_id }},
        contract:    $('#add_contract_data').val()
	},
    function(data, textStatus) {
        getContract();
        $('#btn_contract_index').click();
        $('#add_contract_data').val('');
    });
}

function delContract() {
    $.post('{{ url('ajax/contract/del') }}', {
        contract_id: $('#del_contract_id').val()
	},
    function(data, textStatus) {
		getContract();
        $('#del_contract_id').val('');
    });
}

function getContract() {
    $.post('{{ url('ajax/contract/load') }}', {
        asset_id:   {{ $asset_id }}
	},
    function(data, textStatus) {
        if(textStatus == 'success') {            
            var bd = document.getElementById('contract_table').getElementsByTagName('tbody')[0];
            var contracts = data.datas;

            var actionBtn = "<button class='btn btn-danger' onclick='showContractModal(this)' data-toggle='modal' data-target='#contract_del'><span class='glyphicon glyphicon-trash'></span></button><button class='btn btn-primary' onclick='editContractData(this)'><span class='glyphicon glyphicon-edit'></span></button>";

            var table = $('#contract_table').DataTable();
            table.clear();

            for(var i = 0, len = contracts.length; i < len; i++) {
                table.row.add([contracts[i].id, i + 1, contracts[i].modified_time, contracts[i].contract, actionBtn]);
            }

            table.draw();
        }
    });
}

function showContractModal(doc) {
    var table = $('#contract_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];
    var contract = row_data[3];

    $('#del_contract_id').val(id);
    $('#del_contract_data').text(contract);
}

function editContractData(doc) {
    var table = $('#contract_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];

    $.post('{{ url('ajax/contract/show_edit') }}', {
        contract_id: id
	},
    function(data, textStatus) {
        $('#edit_contract_id').val(id);
        $('#edit_contract_data').val(data.datas.contract);

        $('#btn_contract_edit').click();
    });
}

function updateContract() {
    $.post('{{ url('ajax/contract/commit_edit') }}', {
        contract_id:   $('#edit_contract_id').val(),
        contract_data: $('#edit_contract_data').val()
	},
    function(data, textStatus) {
        getContract();
        $('#btn_contract_index').click();
        $('#edit_contract_data').val('');
    });
}
</script>
@endsection