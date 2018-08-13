<!-- DEBUGGING -->

<!-- Part -->
<div id="part_index" class="tab-pane fade">
    <div class="col-md-3">
        <a class="btn btn-success" onclick="fetchPartOptions('add')" data-toggle="pill" href="#part_add"><span class="glyphicon glyphicon-plus"></span> Add</a>
        <a class="btn btn-primary" onclick="getPart()"><span class="glyphicon glyphicon-repeat"></span></a>
        <a id="btn_part_edit" class='btn btn-primary' data-toggle='pill' href='#part_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
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
    <div class="form-horizontal">
        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Tambah Asset Part</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" id="btn_part_index" data-toggle="pill" href="#part_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button onclick="addPart();" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            </div>
        </div><br>

        

    </div>
</div>
<!-- Edit Part Form -->
<div id="part_edit" class="tab-pane fade">
    <div class="form-horizontal">
        <input type="hidden" id="edit_part_id" value="">

        <div class="row">
            <div class="col-md-12">
                <h4 align="center">Edit Kontrak Asset</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" data-toggle="pill" href="#part_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button type="submit" class="btn btn-success" onclick="updatePart()"><span class="glyphicon glyphicon-edit"></span> Update</button>
            </div>
        </div><br>

		

    </div>
</div>


<!-- Delete Part Modal -->
<div id="part_del" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="form-horizontal">
                <input type="hidden" id="del_part_id" name="id" value=""></input>
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
                    <button class="btn btn-danger" class="close" data-dismiss="modal" onclick="delPart()"><span class="glyphicon glyphicon-trash"></span> Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Part AJAX -->
<script type="text/javascript">

/*  Load Master data */
function getPart() {
    $.post('{{ url('api/part') }}', {
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
                table.row.add([parts[i].id, i + 1, parts[i].start_time, parts[i].end_time, parts[i].hours, parts[i].note, actionBtn]);
            }

            table.draw();
        }
    });
}

/* Options Dropdowns in Add/Edit Data */
function fetchPartOptions(tag) {
    $.get('{{ url('api/part/options') }}', function(data) {
        var part 	= data[0].part;
        var cause 		= data[0].cause;
        var work_order 	= data[0].work_order;
        var reported 	= data[0].reported_by;

        $('#' + tag + '_part_part').empty();
        $('#' + tag + '_part_cause').empty();

        $('#' + tag + '_part_wo_id').val('');
        $('#' + tag + '_part_reported_id').val('');
        $('#' + tag + '_part_wo').empty();
        $('#' + tag + '_part_reported').empty();


        for(var i = 0, len = part.length; i < len; i++) {
            $('#' + tag + '_part_part').append($('<option>', {
                text: part[i]
            }));
        }

        for(var i = 0, len = cause.length; i < len; i++) {
            $('#' + tag + '_part_cause').append($('<option>', {
                text: cause[i]
            }));
        }

		$('#' + tag + '_part_wo_id').val(work_order[0].id);
        $('#' + tag + '_part_reported_id').val(reported[0].id);

        for(var i = 0, len = work_order.length; i < len; i++) {
            $('#' + tag + '_part_wo').append($('<option>', {
                id:     work_order[i].id,
                text:   work_order[i].note
            }));
        }

        for(var i = 0, len = reported.length; i < len; i++) {
            $('#' + tag + '_part_reported').append($('<option>', {
                id:     reported[i].id,
                text:   reported[i].full_name
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
    var st = row_data[2];
    var et = row_data[3];
    var hours = row_data[4];
    var note = row_data[5];

    $('#del_part_id').val(id);
    $('#del_part_st').text(st);
    $('#del_part_et').text(et);
    $('#del_part_hours').text(hours);
    $('#del_part_note').text(note);
}

/* See Edit Form Details */
function editPartData(doc) {
    var table = $('#part_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var ad_id = row_data[0];

    fetchPartOptions('edit');

    $.post('{{ url('api/part/detail') }}', {
        asset_part_id: ad_id
    },
    function(data, textStatus) {
        var result = data.datas;

        $('#edit_part_id').val(result.id);
        $('#edit_part_st_date').val(result.start_time[0]);
        $('#edit_part_st_time').val(result.start_time[1]);
        $('#edit_part_et_date').val(result.end_time[0]);
        $('#edit_part_et_time').val(result.end_time[1]);
        $('#edit_part_hours').val(result.hours);
        $('#edit_part_part').val(result.part_type_id);
        $('#edit_part_cause').val(result.part_cause_id);

        $('#edit_part_wo_id').val(result.wo_id);
        $('#edit_part_wo').find('option[id="' + result.wo_id + '"]').attr('selected', 'selected');

        $('#edit_part_reported_id').val(result.reported_by_id);
        $('#edit_part_reported').find('option[id="' + result.reported_by_id + '"]').attr('selected', 'selected');

        $('#edit_part_reported_date').val(result.reported_time[0]);
        $('#edit_part_reported_time').val(result.reported_time[1]);
        $('#edit_part_note').val(result.note);

        $('#btn_part_edit').click();
    });
}


/* Create New Data */
function addPart() {
    $.post('{{ url('api/part/store') }}', {
        asset_id:       {{ $asset_id }},
        st_date:    	$('#add_part_st_date').val(),
        st_time:      	$('#add_part_st_time').val(),
        et_date:        $('#add_part_et_date').val(),
        et_time:        $('#add_part_et_time').val(),
        hours:          $('#add_part_hours').val(),
        part:    	$('#add_part_part').val(),
        cause:      	$('#add_part_cause').val(),
        work_order:     $('#add_part_wo_id').val(),
        reported_by:    $('#add_part_reported_id').val(),
        reported_date:  $('#add_part_reported_date').val(),
        reported_time:  $('#add_part_reported_time').val(),
        note:           $('#add_part_note').val()
    },
    function(data, textStatus) {
        getPart();
        $('#btn_part_index').click();

        $('#add_part_st_date').val('');
        $('#add_part_st_time').val('');
        $('#add_part_et_date').val('');
        $('#add_part_et_time').val('');
        $('#add_part_hours').val('');
        $('#add_part_part').val('');
        $('#add_part_cause').val('');
        $('#add_part_wo_id').val('');
        $('#add_part_reported_id').val('');
        $('#add_part_reported_date').val('');
        $('#add_part_reported_time').val('');
        $('#add_part_note').val('');
    });
}

/* Delete a Data */
function delPart() {
    $.post('{{ url('api/part/del') }}', {
        asset_part_id: $('#del_part_id').val()
    },
    function(data, textStatus) {
        getPart();
        $('#del_part_id').val('');
    });
}

/* Update a Data */
function updatePart() {
    $.post('{{ url('api/part/update') }}', {
        asset_part_id:  $('#edit_part_id').val(),
        st_date:    	$('#edit_part_st_date').val(),
        st_time:      	$('#edit_part_st_time').val(),
        et_date:        $('#edit_part_et_date').val(),
        et_time:        $('#edit_part_et_time').val(),
        hours:          $('#edit_part_hours').val(),
        part:    	$('#edit_part_part').val(),
        cause:      	$('#edit_part_cause').val(),
        work_order:     $('#edit_part_wo_id').val(),
        reported_by:    $('#edit_part_reported_id').val(),
        reported_date:  $('#edit_part_reported_date').val(),
        reported_time:  $('#edit_part_reported_time').val(),
        note:           $('#edit_part_note').val()
    },
    function(data, textStatus) {
        getPart();
        $('#btn_part_index').click();
    });
}
</script>