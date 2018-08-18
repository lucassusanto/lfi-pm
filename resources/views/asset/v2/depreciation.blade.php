<!-- Depreciation -->
<div id="depreciation_index" class="tab-pane fade">
    <div class="col-md-3">
        <a class="btn btn-success" data-toggle="pill" href="#depreciation_add"><span class="glyphicon glyphicon-plus"></span> Add</a>
        <a class="btn btn-primary" onclick="getDepreciation()"><span class="glyphicon glyphicon-repeat"></span></a>
        <a id="btn_depreciation_edit" class='btn btn-primary' data-toggle='pill' href='#depreciation_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
    </div>
    
    <table id="depreciation_table" width="100%" class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>#</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Depreciation Rate</th>
                <th>End Value</th>
                <th>Note</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody id="tbody_depreciation">
        </tbody>
    </table>
</div>
<!-- Add Depreciation Form -->
<div id="depreciation_add" class="tab-pane fade">
    <div class="form-horizontal">
        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Tambah Asset Depreciation</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" id="btn_depreciation_index" data-toggle="pill" href="#depreciation_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button onclick="addDepreciation();" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            </div>
        </div><br>

        <div class="form-group">
            <label class="control-label col-sm-3" for="add_depreciation_sd">Start Date: *</label>
            <div class="col-sm-3">
                <input type="date" class="form-control" id="add_depreciation_sd" name="sd" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_depreciation_ed">End Date: *</label>
            <div class="col-sm-3">
                <input type="date" class="form-control" id="add_depreciation_ed" name="ed" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_depreciation_rate">Depreciation rate: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="add_depreciation_rate" name="rate" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_depreciation_sv">Start Value: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="add_depreciation_sv" name="sv" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_depreciation_ev">End Value: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="add_depreciation_ev" name="ev" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_depreciation_note">Note:</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="add_depreciation_note" name="note" placeholder="Tuliskan catatan.."></textarea>
            </div>
        </div>
    </div>
</div>
<!-- Edit Depreciation Form -->
<div id="depreciation_edit" class="tab-pane fade">
    <div class="form-horizontal">
        <input type="hidden" id="edit_depreciation_id" value="">

        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Edit Asset Depreciation</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" data-toggle="pill" href="#depreciation_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button type="submit" class="btn btn-success" onclick="updateDepreciation()"><span class="glyphicon glyphicon-edit"></span> Update</button>
            </div>
        </div><br>

        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_depreciation_sd">Start Date: *</label>
            <div class="col-sm-3">
                <input type="date" class="form-control" id="edit_depreciation_sd" name="sd" value="" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_depreciation_ed">End Date: *</label>
            <div class="col-sm-3">
                <input type="date" class="form-control" id="edit_depreciation_ed" name="ed" value="" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_depreciation_rate">Depreciation rate: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="edit_depreciation_rate" name="rate" value="" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_depreciation_sv">Start Value: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="edit_depreciation_sv" name="sv" value="" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_depreciation_ev">End Value: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="edit_depreciation_ev" name="ev" value="" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_depreciation_note">Note:</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="edit_depreciation_note" name="note" placeholder="Tuliskan catatan.."></textarea>
            </div>
        </div>
    </div>
</div>


<!-- Delete Depreciation Modal -->
<div id="depreciation_del" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="form-horizontal">
                <input type="hidden" id="del_depreciation_id" name="id" value=""></input>
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
                        <label class="control-label col-sm-5" for="del_depreciation_sd">Start Date:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_depreciation_sd"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_depreciation_ed">End Date:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_depreciation_ed"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_depreciation_rate">Depreciation Rate:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_depreciation_rate"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_depreciation_ev">End Value:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_depreciation_ev"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_depreciation_note">Note:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_depreciation_note"></label>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-danger" class="close" data-dismiss="modal" onclick="delDepreciation()"><span class="glyphicon glyphicon-trash"></span> Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Depreciation AJAX -->
<script type="text/javascript">

/*  Load Master data */
function getDepreciation() {
    $.post('{{ url('api/depreciation') }}', {
        asset_id:   {{ $asset_id }}
    },
    function(data, textStatus) {
        if(textStatus == 'success') {            
            var bd = document.getElementById('depreciation_table').getElementsByTagName('tbody')[0];
            var depreciations = data.datas;

            var actionBtn = "<button class='btn btn-danger' onclick='showDepreciationModal(this)' data-toggle='modal' data-target='#depreciation_del'><span class='glyphicon glyphicon-trash'></span></button><button class='btn btn-primary' onclick='editDepreciationData(this)'><span class='glyphicon glyphicon-edit'></span></button>";

            var table = $('#depreciation_table').DataTable();
            table.clear();

            for(var i = 0, len = depreciations.length; i < len; i++) {
                table.row.add([depreciations[i].id, i + 1, depreciations[i].start_date, depreciations[i].end_date, depreciations[i].depreciation_rate, depreciations[i].end_value, depreciations[i].note, actionBtn]);
            }

            table.draw();
        }
    });
}


/* Delete Confirmation */
function showDepreciationModal(doc) {
    var table = $('#depreciation_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];
    var sd = row_data[2];
    var ed = row_data[3];
    var rate = row_data[4];
    var ev = row_data[5];
    var note = row_data[6];

    $('#del_depreciation_id').val(id);
    $('#del_depreciation_sd').text(sd);
    $('#del_depreciation_ed').text(ed);
    $('#del_depreciation_rate').text(rate);
    $('#del_depreciation_ev').text(ev);
    $('#del_depreciation_note').text(note);
}

/* See Edit Form Details */
function editDepreciationData(doc) {
    var table = $('#depreciation_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var ad_id = row_data[0];

    $.post('{{ url('api/depreciation/detail') }}', {
        asset_depreciation_id: ad_id
    },
    function(data, textStatus) {
        var result = data.datas;

        $('#edit_depreciation_id').val(ad_id);
        $('#edit_depreciation_sd').val(result.start_date);
        $('#edit_depreciation_ed').val(result.end_date);
        $('#edit_depreciation_rate').val(result.depreciation_rate);
        $('#edit_depreciation_sv').val(result.start_value);
        $('#edit_depreciation_ev').val(result.end_value);
        $('#edit_depreciation_note').val(result.note);

        $('#btn_depreciation_edit').click();
    });
}

/* Clear Add/Edit Fields */
function clearDepreciationData(tag) {
    $('#' + tag + '_depreciation_sd').val('');
    $('#' + tag + '_depreciation_ed').val('');
    $('#' + tag + '_depreciation_rate').val('');
    $('#' + tag + '_depreciation_sv').val('');
    $('#' + tag + '_depreciation_ev').val('');
    $('#' + tag + '_depreciation_note').val('');
}


/* Create New Data */
function addDepreciation() {
    $.post('{{ url('api/depreciation/store') }}', {
        asset_id:   {{ $asset_id }},
        sd:     $('#add_depreciation_sd').val(),
        ed:     $('#add_depreciation_ed').val(),
        dr:     $('#add_depreciation_rate').val(),
        sv:     $('#add_depreciation_sv').val(),
        ev:     $('#add_depreciation_ev').val(),
        note:   $('#add_depreciation_note').val()
    },
    function(data, textStatus) {
        getDepreciation();
        $('#btn_depreciation_index').click();

        clearDepreciationData('add');
    });
}

/* Delete a Data */
function delDepreciation() {
    $.post('{{ url('api/depreciation/del') }}', {
        asset_depreciation_id: $('#del_depreciation_id').val()
    },
    function(data, textStatus) {
        getDepreciation();
        $('#del_depreciation_id').val('');
    });
}

/* Update a Data */
function updateDepreciation() {
    $.post('{{ url('api/depreciation/update') }}', {
        asset_depreciation_id : $('#edit_depreciation_id').val(),
        sd:     $('#edit_depreciation_sd').val(),
        ed:     $('#edit_depreciation_ed').val(),
        dr:     $('#edit_depreciation_rate').val(),
        sv:     $('#edit_depreciation_sv').val(),
        ev:     $('#edit_depreciation_ev').val(),
        note:   $('#edit_depreciation_note').val()
    },
    function(data, textStatus) {
        getDepreciation();
        $('#btn_depreciation_index').click();

        clearDepreciationData('edit');
    });
}
</script>