<!-- DEBUGGING -->

<!-- Meter -->
<div id="meter_index" class="tab-pane fade">
    <div class="col-md-3">
        <a class="btn btn-success" onclick="fetchMeterOptions('add')" data-toggle="pill" href="#meter_add"><span class="glyphicon glyphicon-plus"></span> Add</a>
        <a class="btn btn-primary" onclick="getMeter()"><span class="glyphicon glyphicon-repeat"></span></a>
        <a id="btn_meter_edit" class='btn btn-primary' data-toggle='pill' href='#meter_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
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
    <div class="form-horizontal">
        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Tambah Asset Meter</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" id="btn_meter_index" data-toggle="pill" href="#meter_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button onclick="addMeter();" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            </div>
        </div><br>

        

    </div>
</div>
<!-- Edit Meter Form -->
<div id="meter_edit" class="tab-pane fade">
    <div class="form-horizontal">
        <input type="hidden" id="edit_meter_id" value="">

        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Edit Kontrak Asset</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" data-toggle="pill" href="#meter_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button type="submit" class="btn btn-success" onclick="updateMeter()"><span class="glyphicon glyphicon-edit"></span> Update</button>
            </div>
        </div><br>

		

    </div>
</div>


<!-- Delete Meter Modal -->
<div id="meter_del" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="form-horizontal">
                <input type="hidden" id="del_meter_id" name="id" value=""></input>
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


<!-- Meter AJAX -->
<script type="text/javascript">

/*  Load Master data */
function getMeter() {
    $.post('{{ url('api/meter') }}', {
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
                table.row.add([meters[i].id, i + 1, meters[i].start_time, meters[i].end_time, meters[i].hours, meters[i].note, actionBtn]);
            }

            table.draw();
        }
    });
}

/* Options Dropdowns in Add/Edit Data */
function fetchMeterOptions(tag) {
    $.get('{{ url('api/meter/options') }}', function(data) {
        var meter 	= data[0].meter;
        var cause 		= data[0].cause;
        var work_order 	= data[0].work_order;
        var reported 	= data[0].reported_by;

        $('#' + tag + '_meter_meter').empty();
        $('#' + tag + '_meter_cause').empty();

        $('#' + tag + '_meter_wo_id').val('');
        $('#' + tag + '_meter_reported_id').val('');
        $('#' + tag + '_meter_wo').empty();
        $('#' + tag + '_meter_reported').empty();


        for(var i = 0, len = meter.length; i < len; i++) {
            $('#' + tag + '_meter_meter').append($('<option>', {
                text: meter[i]
            }));
        }

        for(var i = 0, len = cause.length; i < len; i++) {
            $('#' + tag + '_meter_cause').append($('<option>', {
                text: cause[i]
            }));
        }

		$('#' + tag + '_meter_wo_id').val(work_order[0].id);
        $('#' + tag + '_meter_reported_id').val(reported[0].id);

        for(var i = 0, len = work_order.length; i < len; i++) {
            $('#' + tag + '_meter_wo').append($('<option>', {
                id:     work_order[i].id,
                text:   work_order[i].note
            }));
        }

        for(var i = 0, len = reported.length; i < len; i++) {
            $('#' + tag + '_meter_reported').append($('<option>', {
                id:     reported[i].id,
                text:   reported[i].full_name
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
    var st = row_data[2];
    var et = row_data[3];
    var hours = row_data[4];
    var note = row_data[5];

    $('#del_meter_id').val(id);
    $('#del_meter_st').text(st);
    $('#del_meter_et').text(et);
    $('#del_meter_hours').text(hours);
    $('#del_meter_note').text(note);
}

/* See Edit Form Details */
function editMeterData(doc) {
    var table = $('#meter_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var ad_id = row_data[0];

    fetchMeterOptions('edit');

    $.post('{{ url('api/meter/detail') }}', {
        asset_meter_id: ad_id
    },
    function(data, textStatus) {
        var result = data.datas;

        $('#edit_meter_id').val(result.id);
        $('#edit_meter_st_date').val(result.start_time[0]);
        $('#edit_meter_st_time').val(result.start_time[1]);
        $('#edit_meter_et_date').val(result.end_time[0]);
        $('#edit_meter_et_time').val(result.end_time[1]);
        $('#edit_meter_hours').val(result.hours);
        $('#edit_meter_meter').val(result.meter_type_id);
        $('#edit_meter_cause').val(result.meter_cause_id);

        $('#edit_meter_wo_id').val(result.wo_id);
        $('#edit_meter_wo').find('option[id="' + result.wo_id + '"]').attr('selected', 'selected');

        $('#edit_meter_reported_id').val(result.reported_by_id);
        $('#edit_meter_reported').find('option[id="' + result.reported_by_id + '"]').attr('selected', 'selected');

        $('#edit_meter_reported_date').val(result.reported_time[0]);
        $('#edit_meter_reported_time').val(result.reported_time[1]);
        $('#edit_meter_note').val(result.note);

        $('#btn_meter_edit').click();
    });
}


/* Create New Data */
function addMeter() {
    $.post('{{ url('api/meter/store') }}', {
        asset_id:       {{ $asset_id }},
        st_date:    	$('#add_meter_st_date').val(),
        st_time:      	$('#add_meter_st_time').val(),
        et_date:        $('#add_meter_et_date').val(),
        et_time:        $('#add_meter_et_time').val(),
        hours:          $('#add_meter_hours').val(),
        meter:    	$('#add_meter_meter').val(),
        cause:      	$('#add_meter_cause').val(),
        work_order:     $('#add_meter_wo_id').val(),
        reported_by:    $('#add_meter_reported_id').val(),
        reported_date:  $('#add_meter_reported_date').val(),
        reported_time:  $('#add_meter_reported_time').val(),
        note:           $('#add_meter_note').val()
    },
    function(data, textStatus) {
        getMeter();
        $('#btn_meter_index').click();

        $('#add_meter_st_date').val('');
        $('#add_meter_st_time').val('');
        $('#add_meter_et_date').val('');
        $('#add_meter_et_time').val('');
        $('#add_meter_hours').val('');
        $('#add_meter_meter').val('');
        $('#add_meter_cause').val('');
        $('#add_meter_wo_id').val('');
        $('#add_meter_reported_id').val('');
        $('#add_meter_reported_date').val('');
        $('#add_meter_reported_time').val('');
        $('#add_meter_note').val('');
    });
}

/* Delete a Data */
function delMeter() {
    $.post('{{ url('api/meter/del') }}', {
        asset_meter_id: $('#del_meter_id').val()
    },
    function(data, textStatus) {
        getMeter();
        $('#del_meter_id').val('');
    });
}

/* Update a Data */
function updateMeter() {
    $.post('{{ url('api/meter/update') }}', {
        asset_meter_id:  $('#edit_meter_id').val(),
        st_date:    	$('#edit_meter_st_date').val(),
        st_time:      	$('#edit_meter_st_time').val(),
        et_date:        $('#edit_meter_et_date').val(),
        et_time:        $('#edit_meter_et_time').val(),
        hours:          $('#edit_meter_hours').val(),
        meter:    	$('#edit_meter_meter').val(),
        cause:      	$('#edit_meter_cause').val(),
        work_order:     $('#edit_meter_wo_id').val(),
        reported_by:    $('#edit_meter_reported_id').val(),
        reported_date:  $('#edit_meter_reported_date').val(),
        reported_time:  $('#edit_meter_reported_time').val(),
        note:           $('#edit_meter_note').val()
    },
    function(data, textStatus) {
        getMeter();
        $('#btn_meter_index').click();
    });
}
</script>