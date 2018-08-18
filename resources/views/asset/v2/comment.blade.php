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


<!-- Comment AJAX -->
<script type="text/javascript">
    
/* Load Master Data */
function getComment() {
    $.post('{{ url('api/comment') }}', {
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

/* Delete Confirmation */
function showCommentModal(doc) {
    var table = $('#comment_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];
    var comment = row_data[3];

    $('#del_comment_id').val(id);
    $('#del_comment_data').text(comment);
}

/* See Edit Form Details */
function editCommentData(doc) {
    var table = $('#comment_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];

    $.post('{{ url('api/comment/detail') }}', {
        asset_comment_id: id
    },
    function(data, textStatus) {
        $('#edit_comment_id').val(id);
        $('#edit_comment_data').val(data.datas.comment);

        $('#btn_comment_edit').click();
    });
}


/* Create New Data */
function addComment() {
    $.post('{{ url('api/comment/store') }}', {
        asset_id:   {{ $asset_id }},
        comment:    $('#add_comment_data').val()
    },
    function(data, textStatus) {
        getComment();
        $('#btn_comment_index').click();
        $('#add_comment_data').val('');
    });
}

/* Delete a Data */
function delComment() {
    $.post('{{ url('api/comment/del') }}', {
        asset_comment_id: $('#del_comment_id').val()
    },
    function(data, textStatus) {
        getComment();
        $('#del_comment_id').val('');
    });
}

/* Update a Data */
function updateComment() {
    $.post('{{ url('api/comment/update') }}', {
        asset_comment_id:   $('#edit_comment_id').val(),
        comment: $('#edit_comment_data').val()
    },
    function(data, textStatus) {
        getComment();
        $('#btn_comment_index').click();
        $('#edit_comment_data').val('');
    });
}
</script>