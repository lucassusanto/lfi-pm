<!-- Downtime -->
<div id="downtime_index" class="tab-pane fade">
    <div class="col-md-3">
        <a class="btn btn-success" onclick="fetchDowntimeOptions('add')" data-toggle="pill" href="#downtime_add"><span class="glyphicon glyphicon-plus"></span> Add</a>
        <a class="btn btn-primary" onclick="getDowntime()"><span class="glyphicon glyphicon-repeat"></span></a>
        <a id="btn_downtime_edit" class='btn btn-primary' data-toggle='pill' href='#downtime_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
    </div>
    
    <table id="downtime_table" width="100%" class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>#</th>
                <th>Start Time</th>
                <th>End Time</th>
                <th>Hours</th>
                <th>Notes</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody id="tbody_downtime">
        </tbody>
    </table>
</div>
<!-- Add Downtime Form -->
<div id="downtime_add" class="tab-pane fade">
    <div class="form-horizontal">
        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Tambah Asset Downtime</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" id="btn_downtime_index" data-toggle="pill" href="#downtime_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button onclick="addDowntime();" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            </div>
        </div><br>

        <div class="form-group">
            <label class="control-label col-sm-3" for="add_downtime_st_date">Start Time: *</label>
            <div class="col-sm-2">
                <input type="date" class="form-control" id="add_downtime_st_date" required>
            </div>
            <div class="col-sm-2">
                <input type="time" class="form-control" id="add_downtime_st_time" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_downtime_et_date">End Time: *</label>
            <div class="col-sm-2">
                <input type="date" class="form-control" id="add_downtime_et_date" required>
            </div>
            <div class="col-sm-2">
                <input type="time" class="form-control" id="add_downtime_et_time" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_downtime_hours">Hours: *</label>
            <div class="col-sm-2">
                <input type="text" class="form-control" id="add_downtime_hours" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_downtime_downtime">Downtime: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="add_downtime_downtime">
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_downtime_cause">Downtime Cause: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="add_downtime_cause">
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Work Order: *</label>
            <div class="col-sm-3">
                <input type="hidden" id="add_downtime_wo_id">
                <select class="form-control" id="add_downtime_wo" onchange="$('#add_downtime_wo_id').val(getID(this))">
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Reported by: *</label>
            <div class="col-sm-3">
                <input type="hidden" id="add_downtime_reported_id">
                <select class="form-control" id="add_downtime_reported" onchange="$('#add_downtime_reported_id').val(getID(this))">
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_downtime_ra_date">Reported at:</label>
            <div class="col-sm-2">
                <input type="date" class="form-control" id="add_downtime_reported_date">
            </div>
            <div class="col-sm-2">
                <input type="time" class="form-control" id="add_downtime_reported_time">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" for="add_downtime_note">Note:</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="add_downtime_note" placeholder="Tuliskan catatan.."></textarea>
            </div>
        </div>
    </div>
</div>
<!-- Edit Downtime Form -->
<div id="downtime_edit" class="tab-pane fade">
    <div class="form-horizontal">
        <input type="hidden" id="edit_downtime_id" value="">

        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Edit Kontrak Asset</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" data-toggle="pill" href="#downtime_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button type="submit" class="btn btn-success" onclick="updateDowntime()"><span class="glyphicon glyphicon-edit"></span> Update</button>
            </div>
        </div><br>

		<div class="form-group">
            <label class="control-label col-sm-3" for="edit_downtime_st_date">Start Time: *</label>
            <div class="col-sm-2">
                <input type="date" class="form-control" id="edit_downtime_st_date" required>
            </div>
            <div class="col-sm-2">
                <input type="time" class="form-control" id="edit_downtime_st_time" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_downtime_et_date">End Time: *</label>
            <div class="col-sm-2">
                <input type="date" class="form-control" id="edit_downtime_et_date" required>
            </div>
            <div class="col-sm-2">
                <input type="time" class="form-control" id="edit_downtime_et_time" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_downtime_hours">Hours: *</label>
            <div class="col-sm-2">
                <input type="text" class="form-control" id="edit_downtime_hours" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_downtime_downtime">Downtime: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="edit_downtime_downtime">
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_downtime_cause">Downtime Cause: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="edit_downtime_cause">
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Work Order: *</label>
            <div class="col-sm-3">
                <input type="hidden" id="edit_downtime_wo_id">
                <select class="form-control" id="edit_downtime_wo" onchange="$('#edit_downtime_wo_id').val(getID(this))">
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Reported by: *</label>
            <div class="col-sm-3">
                <input type="hidden" id="edit_downtime_reported_id">
                <select class="form-control" id="edit_downtime_reported" onchange="$('#edit_downtime_reported_id').val(getID(this))">
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_downtime_ra_date">Reported at:</label>
            <div class="col-sm-2">
                <input type="date" class="form-control" id="edit_downtime_reported_date">
            </div>
            <div class="col-sm-2">
                <input type="time" class="form-control" id="edit_downtime_reported_time">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_downtime_note">Note:</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="edit_downtime_note" placeholder="Tuliskan catatan.."></textarea>
            </div>
        </div>        
    </div>
</div>


<!-- Delete Downtime Modal -->
<div id="downtime_del" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="form-horizontal">
                <input type="hidden" id="del_downtime_id" name="id" value=""></input>
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
                        <label class="control-label col-sm-5" for="del_downtime_st">Start time:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_downtime_st"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_downtime_et">End time:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_downtime_et"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_downtime_hours">Hours:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_downtime_hours"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_downtime_note">Note:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_downtime_note"></label>
                        </div>
                    </div>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-danger" class="close" data-dismiss="modal" onclick="delDowntime()"><span class="glyphicon glyphicon-trash"></span> Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Downtime AJAX -->
<script type="text/javascript">

/*  Load Master data */
function getDowntime() {
    $.post('{{ url('api/downtime') }}', {
        asset_id:   {{ $asset_id }}
    },
    function(data, textStatus) {
        if(textStatus == 'success') {            
            var bd = document.getElementById('downtime_table').getElementsByTagName('tbody')[0];
            var downtimes = data.datas;

            var actionBtn = "<button class='btn btn-danger' onclick='showDowntimeModal(this)' data-toggle='modal' data-target='#downtime_del'><span class='glyphicon glyphicon-trash'></span></button><button class='btn btn-primary' onclick='editDowntimeData(this)'><span class='glyphicon glyphicon-edit'></span></button>";

            var table = $('#downtime_table').DataTable();
            table.clear();

            for(var i = 0, len = downtimes.length; i < len; i++) {
                table.row.add([downtimes[i].id, i + 1, downtimes[i].start_time, downtimes[i].end_time, downtimes[i].hours, downtimes[i].note, actionBtn]);
            }

            table.draw();
        }
    });
}

/* Options Dropdowns in Add/Edit Data */
function fetchDowntimeOptions(tag) {
    $.get('{{ url('api/downtime/options') }}', function(data) {
        var downtime 	= data[0].downtime;
        var cause 		= data[0].cause;
        var work_order 	= data[0].work_order;
        var reported 	= data[0].reported_by;

        $('#' + tag + '_downtime_downtime').empty();
        $('#' + tag + '_downtime_cause').empty();

        $('#' + tag + '_downtime_wo_id').val('');
        $('#' + tag + '_downtime_reported_id').val('');
        $('#' + tag + '_downtime_wo').empty();
        $('#' + tag + '_downtime_reported').empty();


        for(var i = 0, len = downtime.length; i < len; i++) {
            $('#' + tag + '_downtime_downtime').append($('<option>', {
                text: downtime[i]
            }));
        }

        for(var i = 0, len = cause.length; i < len; i++) {
            $('#' + tag + '_downtime_cause').append($('<option>', {
                text: cause[i]
            }));
        }

		$('#' + tag + '_downtime_wo_id').val(work_order[0].id);
        $('#' + tag + '_downtime_reported_id').val(reported[0].id);

        for(var i = 0, len = work_order.length; i < len; i++) {
            $('#' + tag + '_downtime_wo').append($('<option>', {
                id:     work_order[i].id,
                text:   work_order[i].note
            }));
        }

        for(var i = 0, len = reported.length; i < len; i++) {
            $('#' + tag + '_downtime_reported').append($('<option>', {
                id:     reported[i].id,
                text:   reported[i].full_name
            }));
        }
    });
}

/* Delete Confirmation */
function showDowntimeModal(doc) {
    var table = $('#downtime_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];
    var st = row_data[2];
    var et = row_data[3];
    var hours = row_data[4];
    var note = row_data[5];

    $('#del_downtime_id').val(id);
    $('#del_downtime_st').text(st);
    $('#del_downtime_et').text(et);
    $('#del_downtime_hours').text(hours);
    $('#del_downtime_note').text(note);
}

/* See Edit Form Details */
function editDowntimeData(doc) {
    var table = $('#downtime_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var ad_id = row_data[0];

    fetchDowntimeOptions('edit');

    $.post('{{ url('api/downtime/detail') }}', {
        asset_downtime_id: ad_id
    },
    function(data, textStatus) {
        var result = data.datas;

        $('#edit_downtime_id').val(result.id);
        $('#edit_downtime_st_date').val(result.start_time[0]);
        $('#edit_downtime_st_time').val(result.start_time[1]);
        $('#edit_downtime_et_date').val(result.end_time[0]);
        $('#edit_downtime_et_time').val(result.end_time[1]);
        $('#edit_downtime_hours').val(result.hours);
        $('#edit_downtime_downtime').val(result.downtime_type_id);
        $('#edit_downtime_cause').val(result.downtime_cause_id);

        $('#edit_downtime_wo_id').val(result.wo_id);
        $('#edit_downtime_wo').find('option[id="' + result.wo_id + '"]').attr('selected', 'selected');

        $('#edit_downtime_reported_id').val(result.reported_by_id);
        $('#edit_downtime_reported').find('option[id="' + result.reported_by_id + '"]').attr('selected', 'selected');

        $('#edit_downtime_reported_date').val(result.reported_time[0]);
        $('#edit_downtime_reported_time').val(result.reported_time[1]);
        $('#edit_downtime_note').val(result.note);

        $('#btn_downtime_edit').click();
    });
}


/* Create New Data */
function addDowntime() {
    $.post('{{ url('api/downtime/store') }}', {
        asset_id:       {{ $asset_id }},
        st_date:    	$('#add_downtime_st_date').val(),
        st_time:      	$('#add_downtime_st_time').val(),
        et_date:        $('#add_downtime_et_date').val(),
        et_time:        $('#add_downtime_et_time').val(),
        hours:          $('#add_downtime_hours').val(),
        downtime:    	$('#add_downtime_downtime').val(),
        cause:      	$('#add_downtime_cause').val(),
        work_order:     $('#add_downtime_wo_id').val(),
        reported_by:    $('#add_downtime_reported_id').val(),
        reported_date:  $('#add_downtime_reported_date').val(),
        reported_time:  $('#add_downtime_reported_time').val(),
        note:           $('#add_downtime_note').val()
    },
    function(data, textStatus) {
        getDowntime();
        $('#btn_downtime_index').click();

        $('#add_downtime_st_date').val('');
        $('#add_downtime_st_time').val('');
        $('#add_downtime_et_date').val('');
        $('#add_downtime_et_time').val('');
        $('#add_downtime_hours').val('');
        $('#add_downtime_downtime').val('');
        $('#add_downtime_cause').val('');
        $('#add_downtime_wo_id').val('');
        $('#add_downtime_reported_id').val('');
        $('#add_downtime_reported_date').val('');
        $('#add_downtime_reported_time').val('');
        $('#add_downtime_note').val('');
    });
}

/* Delete a Data */
function delDowntime() {
    $.post('{{ url('api/downtime/del') }}', {
        asset_downtime_id: $('#del_downtime_id').val()
    },
    function(data, textStatus) {
        getDowntime();
        $('#del_downtime_id').val('');
    });
}

/* Update a Data */
function updateDowntime() {
    $.post('{{ url('api/downtime/update') }}', {
        asset_downtime_id:  $('#edit_downtime_id').val(),
        st_date:    	$('#edit_downtime_st_date').val(),
        st_time:      	$('#edit_downtime_st_time').val(),
        et_date:        $('#edit_downtime_et_date').val(),
        et_time:        $('#edit_downtime_et_time').val(),
        hours:          $('#edit_downtime_hours').val(),
        downtime:    	$('#edit_downtime_downtime').val(),
        cause:      	$('#edit_downtime_cause').val(),
        work_order:     $('#edit_downtime_wo_id').val(),
        reported_by:    $('#edit_downtime_reported_id').val(),
        reported_date:  $('#edit_downtime_reported_date').val(),
        reported_time:  $('#edit_downtime_reported_time').val(),
        note:           $('#edit_downtime_note').val()
    },
    function(data, textStatus) {
        getDowntime();
        $('#btn_downtime_index').click();
    });
}
</script>