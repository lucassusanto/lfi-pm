<!-- Part -->
<div id="part_index" class="tab-pane fade">
    <div class="col-md-3">
        <a class="btn btn-success" onclick="fetchPartOptions('add')" data-toggle="pill" href="#part_add"><span class="glyphicon glyphicon-plus"></span> Add</a>
        <a class="btn btn-primary" onclick="getPart()"><span class="glyphicon glyphicon-repeat"></span></a>
        <a id="btn_part_edit" class='btn btn-primary' data-toggle='pill' href='#part_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
    </div>

    <div class="col-md-1 col-md-offset-8">
        <div id="part_loader" class="loader"></div>
    </div>
    
    <table id="part_table" width="100%" class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>#</th>
                <th>Item</th>
                <th>Type</th>
                <th>Note</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody id="tbody_part">
        </tbody>
    </table>
</div>
<!-- Add Part Form -->
<div id="part_add" class="tab-pane fade">
    <form id="form_add_part" class="form-horizontal">
        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Tambah Asset Part</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" id="btn_part_index" data-toggle="pill" href="#part_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button onclick="addPart()" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            </div>
        </div><br>

        <div class="form-group">
            <label class="control-label col-sm-3" for="add_part_item">Item: *</label>
            <div class="col-sm-4">
                <input type="hidden" id="add_part_item_id" name="item_id" required>
                <select class="form-control" id="add_part_item" onchange="$('#add_part_item_id').val(getID(this))">
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_part_type">Type: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="add_part_type" name="type" required>
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_part_qty">Quantity:</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="add_part_qty" name="qty">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_part_wuom">Weight UOM: *</label>
            <div class="col-sm-3">
                <input type="hidden" id="add_part_wuom_id" name="wuom_id" required>
                <select class="form-control" id="add_part_wuom" onchange="$('#add_part_wuom_id').val(getID(this))">
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_part_note">Notes: *</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="add_part_note" name="note" placeholder="Tuliskan catatan .." required></textarea>
            </div>
        </div>
    </form>
</div>
<!-- Edit Part Form -->
<div id="part_edit" class="tab-pane fade">
    <form id="form_edit_part" class="form-horizontal">
        <input type="hidden" id="edit_part_id">

        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Edit Asset Part</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" data-toggle="pill" href="#part_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button type="submit" class="btn btn-success" onclick="updatePart()"><span class="glyphicon glyphicon-edit"></span> Update</button>
            </div>
        </div><br>

        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_part_item">Item: *</label>
            <div class="col-sm-4">
                <input type="hidden" id="edit_part_item_id" name="item_id" required>
                <select class="form-control" id="edit_part_item" onchange="$('#edit_part_item_id').val(getID(this))">
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_part_type">Type: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="edit_part_type" name="type" required>
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_part_qty">Quantity:</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="edit_part_qty" name="qty">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_part_wuom">Weight UOM: *</label>
            <div class="col-sm-3">
                <input type="hidden" id="edit_part_wuom_id" name="wuom_id" required>
                <select class="form-control" id="edit_part_wuom" onchange="$('#edit_part_wuom_id').val(getID(this))">
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_part_note">Notes: *</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="edit_part_note" name="note" placeholder="Tuliskan catatan .." required></textarea>
            </div>
        </div>
    </form>
</div>

<!-- Delete Part Modal -->
<div id="part_del" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="form-horizontal">
                <input type="hidden" id="del_part_id" name="id"></input>
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
                        <label class="control-label col-sm-4" for="del_part_item">Item:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_part_item"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="del_part_type">Type:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_part_type"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="del_part_note">Note:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_part_note"></label>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-danger" class="close" data-dismiss="modal" onclick="delPart()"><span class="glyphicon glyphicon-trash"></span> Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Part JS -->
<script type="text/javascript">
$('#form_add_part').submit(function(e) {
    e.preventDefault();
});
$('#form_edit_part').submit(function(e) {
    e.preventDefault();
});

/*  Load Master data */
function getPart() {
    $('#part_loader').show();

    $.post('{{ url('api/asset/part') }}', {
        asset_id:   {{ $asset_id }}
    },
    function(data, textStatus) {
        if(textStatus == 'success') {            
            var bd = document.getElementById('part_table').getElementsByTagName('tbody')[0];
            var parts = data.datas;

            var actionBtn = "<button class='btn btn-danger' onclick='showPartModal(this)' data-toggle='modal' data-target='#part_del'><span class='glyphicon glyphicon-trash'></span></button><button class='btn btn-primary' onclick='editPartData(this)'><span class='glyphicon glyphicon-edit'></span></button>";

            var table = $('#part_table').DataTable();
            table.clear();

            for(var i = 0, len = parts.length; i < len; i++) {
                table.row.add([parts[i].id, i + 1, parts[i].in_no, parts[i].type_id, parts[i].note, actionBtn]);
            }

            table.draw();
        }
        $('#part_loader').hide();
    });
}

/* Options Dropdowns in Add/Edit Data */
function fetchPartOptions(tag) {
    $.get('{{ url('api/asset/part/options') }}', function(data) {
        var item        = data[0].item;
        var weight_uom  = data[0].weight_uom;
        var type        = data[0].type;

        clearPartOptions(tag);

        $('#' + tag + '_part_item_id').val(item[0].id);
        $('#' + tag + '_part_wuom_id').val(weight_uom[0].id);

        for(var i = 0, len = item.length; i < len; i++) {
            $('#' + tag + '_part_item').append($('<option>', {
                id:     item[i].id,
                text:   item[i].in_no
            }));
        }

        for(var i = 0, len = type.length; i < len; i++) {
            $('#' + tag + '_part_type').append($('<option>', {
                text: type[i]
            }));
        }

        for(var i = 0, len = weight_uom.length; i < len; i++) {
            $('#' + tag + '_part_wuom').append($('<option>', {
                id:     weight_uom[i].id,
                text:   weight_uom[i].uom
            }));
        }
    });
}

/* Delete Confirmation */
function showPartModal(doc) {
    var table = $('#part_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];
    var item = row_data[2];
    var type = row_data[3];
    var note = row_data[4];

    $('#del_part_id').val(id);
    $('#del_part_item').text(item);
    $('#del_part_type').text(type);
    $('#del_part_note').text(note);
}

/* See Edit Form Details */
function editPartData(doc) {
    var table = $('#part_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var ap_id = row_data[0];

    fetchPartOptions('edit');

    $.post('{{ url('api/asset/part/detail') }}', {
        asset_part_id: ap_id
    },
    function(data, textStatus) {
        var result = data.datas;

        $('#edit_part_id').val(result.id);

        $('#edit_part_item_id').val(result.in_id);
        $('#edit_part_item').find('option[id="' + result.in_id + '"]').attr('selected', 'selected');
        
        $('#edit_part_type').val(result.type_id);
        $('#edit_part_qty').val(result.qty);

        $('#edit_part_wuom_id').val(result.uom_id);
        $('#edit_part_wuom').find('option[id="' + result.uom_id + '"]').attr('selected', 'selected');
        
        $('#edit_part_note').val(result.note);

        $('#btn_part_edit').click();
    });
}

/* Clear Add/Edit Fields */
function clearPartData(tag) {
    $('#' + tag + '_part_qty').val('');
    $('#' + tag + '_part_note').val('');
}
function clearPartOptions(tag) {
    $('#' + tag + '_part_type').empty();
    $('#' + tag + '_part_item_id').val('');
    $('#' + tag + '_part_item').empty();
    $('#' + tag + '_part_wuom_id').val('');
    $('#' + tag + '_part_wuom').empty();
}


/* Create New Data */
function addPart() {
    $.post('{{ url('api/asset/part/store') }}', {
        asset_id:   {{ $asset_id }},
        item:       $('#add_part_item_id').val(),
        type:       $('#add_part_type').val(),
        qty:        $('#add_part_qty').val(),
        weight_uom: $('#add_part_wuom_id').val(),
        note:       $('#add_part_note').val()
    },
    function(data, textStatus) {
        getPart();
        $('#btn_part_index').click();

        clearPartData('add');
    });
}

/* Delete a Data */
function delPart() {
    $.post('{{ url('api/asset/part/del') }}', {
        asset_part_id: $('#del_part_id').val()
    },
    function(data, textStatus) {
        getPart();
        $('#del_part_id').val('');
    });
}

/* Update a Data */
function updatePart() {
    $.post('{{ url('api/asset/part/update') }}', {
        asset_part_id:  $('#edit_part_id').val(),
        item:           $('#edit_part_item_id').val(),
        type:           $('#edit_part_type').val(),
        qty:            $('#edit_part_qty').val(),
        weight_uom:     $('#edit_part_wuom_id').val(),
        note:           $('#edit_part_note').val()
    },
    function(data, textStatus) {
        getPart();
        $('#btn_part_index').click();

        clearPartData('edit');
    });
}
</script>