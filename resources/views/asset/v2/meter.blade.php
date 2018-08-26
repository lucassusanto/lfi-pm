<!-- Meter -->
<div id="meter_index" class="tab-pane fade">
    <div class="col-md-3">
        <a class="btn btn-success" onclick="fetchMeterOptions('add')" data-toggle="pill" href="#meter_add"><span class="glyphicon glyphicon-plus"></span> Add</a>
        <a class="btn btn-primary" onclick="getMeter()"><span class="glyphicon glyphicon-repeat"></span></a>
        <a id="btn_meter_edit" class='btn btn-primary' data-toggle='pill' href='#meter_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
    </div>

    <div class="col-md-1 col-md-offset-8">
        <div id="meter_loader" class="loader"></div>
    </div>
    
    <table id="meter_table" width="100%" class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>#</th>
                <th>Meter No</th>
                <th>Reading</th>
                <th>Time Taken</th>
                <th>Note</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody id="tbody_meter">
        </tbody>
    </table>
</div>
<!-- Add Meter Form -->
<div id="meter_add" class="tab-pane fade">
    <form id="form_add_meter" class="form-horizontal">
        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Tambah Asset Meter</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" id="btn_meter_index" data-toggle="pill" href="#meter_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button onclick="addMeter()" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            </div>
        </div><br>

        <div class="form-group">
            <label class="control-label col-sm-3" for="add_meter_no">Meter No: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="add_meter_no" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_meter_type">Type:</label>
            <div class="col-sm-3">
                <input type="hidden" id="add_meter_type_id">
                <select class="form-control" id="add_meter_type" onchange="$('#add_meter_type_id').val(getID(this))">
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_meter_ru">Reading Unit:</label>
            <div class="col-sm-3">
                <input type="hidden" id="add_meter_ru_id">
                <select class="form-control" id="add_meter_ru" onchange="$('#add_meter_ru_id').val(getID(this))">
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_meter_reading">Reading: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="add_meter_reading" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_meter_rollup">Meter Rollup: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="add_meter_rollup" required>

                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_meter_rr">Rollover Reading: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="add_meter_rr" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_meter_note">Note:</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="add_meter_note" placeholder="Tuliskan catatan .."></textarea>
            </div>
        </div>
    </form>
</div>
<!-- Edit Meter Form -->
<div id="meter_edit" class="tab-pane fade">
    <form id="form_edit_meter" class="form-horizontal">
        <input type="hidden" id="edit_meter_id">

        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Edit Asset Meter</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" data-toggle="pill" href="#meter_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button type="submit" class="btn btn-success" onclick="updateMeter()"><span class="glyphicon glyphicon-edit"></span> Update</button>
            </div>
        </div><br>

		<div class="form-group">
            <label class="control-label col-sm-3" for="edit_meter_no">Meter No: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="edit_meter_no" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_meter_type">Type:</label>
            <div class="col-sm-3">
                <input type="hidden" id="edit_meter_type_id">
                <select class="form-control" id="edit_meter_type" onchange="$('#edit_meter_type_id').val(getID(this))">
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_meter_ru">Reading Unit:</label>
            <div class="col-sm-3">
                <input type="hidden" id="edit_meter_ru_id">
                <select class="form-control" id="edit_meter_ru" onchange="$('#edit_meter_ru_id').val(getID(this))">
                    
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_meter_reading">Reading: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="edit_meter_reading" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_meter_rollup">Meter Rollup: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="edit_meter_rollup" required>

                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_meter_rr">Rollover Reading: *</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="edit_meter_rr" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_meter_note">Note:</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="edit_meter_note" placeholder="Tuliskan catatan .."></textarea>
            </div>
        </div>
    </form>
</div>


<!-- Delete Meter Modal -->
<div id="meter_del" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="form-horizontal">
                <input type="hidden" id="del_meter_id" name="id"></input>
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
                        <label class="control-label col-sm-5" for="del_meter_no">Meter No:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_meter_no"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_meter_reading">Reading:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_meter_reading"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_meter_tt">Time Taken:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_meter_tt"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_meter_note">Note:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_meter_note"></label>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-danger" class="close" data-dismiss="modal" onclick="delMeter()"><span class="glyphicon glyphicon-trash"></span> Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Meter JS -->
<script type="text/javascript">
$('#form_add_meter').submit(function(e) {
    e.preventDefault();
});
$('#form_edit_meter').submit(function(e) {
    e.preventDefault();
});

/*  Load Master data */
function getMeter() {
    $('#meter_loader').show();

    $.post('{{ url('api/asset/meter') }}', {
        asset_id:   {{ $asset_id }}
    },
    function(data, textStatus) {
        if(textStatus == 'success') {            
            var bd = document.getElementById('meter_table').getElementsByTagName('tbody')[0];
            var meters = data.datas;

            var actionBtn = "<button class='btn btn-danger' onclick='showMeterModal(this)' data-toggle='modal' data-target='#meter_del'><span class='glyphicon glyphicon-trash'></span></button><button class='btn btn-primary' onclick='editMeterData(this)'><span class='glyphicon glyphicon-edit'></span></button>";

            var table = $('#meter_table').DataTable();
            table.clear();

            for(var i = 0, len = meters.length; i < len; i++) {
                table.row.add([meters[i].id, i + 1, meters[i].meter_no, meters[i].reading, meters[i].time_taken, meters[i].note, actionBtn]);
            }

            table.draw();
        }
        $('#meter_loader').hide();
    });
}

/* Options Dropdowns in Add/Edit Data */
function fetchMeterOptions(tag) {
    $.get('{{ url('api/asset/meter/options') }}', function(data) {
        var type 	        = data[0].type;
        var reading_unit    = data[0].reading_unit;
        var rollup          = data[0].rollup;

        clearMeterOptions(tag);

        $('#' + tag + '_meter_type').append($('<option>'));
        $('#' + tag + '_meter_ru').append($('<option>'));

        for(var i = 0, len = type.length; i < len; i++) {
            $('#' + tag + '_meter_type').append($('<option>', {
                id:     type[i].id,
                text:   type[i].type
            }));
        }

        for(var i = 0, len = reading_unit.length; i < len; i++) {
            $('#' + tag + '_meter_ru').append($('<option>', {
                id:     reading_unit[i].id,
                text:   reading_unit[i].uom
            }));
        }

        for(var i = 0, len = rollup.length; i < len; i++) {
            $('#' + tag + '_meter_rollup').append($('<option>', {
                text: rollup[i]
            }));
        }
    });
}

/* Delete Confirmation */
function showMeterModal(doc) {
    var table = $('#meter_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];
    var no = row_data[2];
    var reading = row_data[3];
    var time_taken = row_data[4];
    var note = row_data[5];

    $('#del_meter_id').val(id);
    $('#del_meter_no').text(no);
    $('#del_meter_reading').text(reading);
    $('#del_meter_tt').text(time_taken);
    $('#del_meter_note').text(note);
}

/* See Edit Form Details */
function editMeterData(doc) {
    var table = $('#meter_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var am_id = row_data[0];

    fetchMeterOptions('edit');

    $.post('{{ url('api/asset/meter/detail') }}', {
        asset_meter_id: am_id
    },
    function(data, textStatus) {
        var result = data.datas;

        $('#edit_meter_id').val(result.id);
        $('#edit_meter_no').val(result.meter_no);
        $('#edit_meter_type_id').val(result.type_id);
        $('#edit_meter_type').find('option[id="' + result.type_id + '"]').attr('selected', 'selected');

        $('#edit_meter_ru_id').val(result.reading_uom_id);
        $('#edit_meter_ru').find('option[id="' + result.reading_uom_id + '"]').attr('selected', 'selected');
        
        $('#edit_meter_reading').val(result.reading);
        $('#edit_meter_rollup').val(result.rollup_type_id);
        $('#edit_meter_rr').val(result.rollover_reading);
        $('#edit_meter_note').val(result.note);

        $('#btn_meter_edit').click();
    });
}

/* Clear Add/Edit Fields */
function clearMeterData(tag) {
    $('#' + tag + '_meter_no').val('');    
    $('#' + tag + '_meter_reading').val('');
    $('#' + tag + '_meter_rr').val('');
    $('#' + tag + '_meter_note').val('');
}
function clearMeterOptions(tag) {
    $('#' + tag + '_meter_type_id').val('');
    $('#' + tag + '_meter_type').empty();
    $('#' + tag + '_meter_ru_id').val('');
    $('#' + tag + '_meter_ru').empty();
    $('#' + tag + '_meter_rollup').empty();
}


/* Create New Data */
function addMeter() {
    $.post('{{ url('api/asset/meter/store') }}', {
        asset_id:           {{ $asset_id }},
        no:    	            $('#add_meter_no').val(),
        type:      	        $('#add_meter_type_id').val(),
        reading_unit:       $('#add_meter_ru_id').val(),
        reading:            $('#add_meter_reading').val(),
        rollup:             $('#add_meter_rollup').val(),
        rollover_reading:   $('#add_meter_rr').val(),
        note:               $('#add_meter_note').val()
    },
    function(data, textStatus) {
        getMeter();
        $('#btn_meter_index').click();

        clearMeterData('add');
    });
}

/* Delete a Data */
function delMeter() {
    $.post('{{ url('api/asset/meter/del') }}', {
        asset_meter_id: $('#del_meter_id').val()
    },
    function(data, textStatus) {
        getMeter();
        $('#del_meter_id').val('');
    });
}

/* Update a Data */
function updateMeter() {
    $.post('{{ url('api/asset/meter/update') }}', {
        asset_meter_id:     $('#edit_meter_id').val(),
        no:                 $('#edit_meter_no').val(),
        type:               $('#edit_meter_type_id').val(),
        reading_unit:       $('#edit_meter_ru_id').val(),
        reading:            $('#edit_meter_reading').val(),
        rollup:             $('#edit_meter_rollup').val(),
        rollover_reading:   $('#edit_meter_rr').val(),
        note:               $('#edit_meter_note').val()
    },
    function(data, textStatus) {
        getMeter();
        $('#btn_meter_index').click();

        clearMeterData('edit');
    });
}
</script>