<!-- Contract -->
<div id="contract_index" class="tab-pane fade">
    <div class="col-md-3">
        <a class="btn btn-success" onclick="fetchContractOptions('add')" data-toggle="pill" href="#contract_add"><span class="glyphicon glyphicon-plus"></span> Add</a>
        <a class="btn btn-primary" onclick="getContract()"><span class="glyphicon glyphicon-repeat"></span></a>
        <a id="btn_contract_edit" class='btn btn-primary' data-toggle='pill' href='#contract_edit' style="visibility: hidden;"><span class='glyphicon glyphicon-edit'></span>Edit Page</a>
    </div>
    
    <table id="contract_table" width="100%" class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>#</th>
                <th>Contract</th>
                <th>Note</th>
                <th>Status</th>
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
                <h4 align="center">Tambah Kontrak Asset</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" id="btn_contract_index" data-toggle="pill" href="#contract_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button onclick="addContract();" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add</button>
            </div>
        </div><br>

        <div class="form-group">
            <label class="control-label col-sm-3" for="add_contract_contract">Contract: *</label>
            <div class="col-sm-3">
                <input type="hidden" id="add_contract_contract_id" name="contract" value="">
                <select class="form-control" id="add_contract_contract" onchange="$('#add_contract_contract_id').val(getID(this));">

                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" for="add_contract_status">Status: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="add_contract_status" name="status">

                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" for="add_contract_sd">Start Date: *</label>
            <div class="col-sm-3">
                <input type="date" class="form-control" id="add_contract_sd" name="sd" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="add_contract_ed">End Date: *</label>
            <div class="col-sm-3">
                <input type="date" class="form-control" id="add_contract_ed" name="ed" required>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" for="add_contract_note">Note: *</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="add_contract_note" name="note" placeholder="Tuliskan catatan.." required></textarea>
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
                <h4 align="center">Edit Kontrak Asset</h4>
            </div>
            <div class="col-md-4">
                <a class="btn btn-default" data-toggle="pill" href="#contract_index"><span class="glyphicon glyphicon-menu-left"></span> Back</a>
            </div>
            <div class="col-md-2 col-md-offset-6">
                <button type="submit" class="btn btn-success" onclick="updateContract()"><span class="glyphicon glyphicon-edit"></span> Update</button>
            </div>
        </div><br>

        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_contract_contract">Contract: *</label>
            <div class="col-sm-3">
                <input type="hidden" id="edit_contract_contract_id" name="contract" value="">
                <select class="form-control" id="edit_contract_contract" onchange="document.getElementById('edit_contract_contract_id').value = getID(this);">

                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_contract_status">Status: *</label>
            <div class="col-sm-3">
                <select class="form-control" id="edit_contract_status" name="status">

                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_contract_sd">Start Date: *</label>
            <div class="col-sm-3">
                <input type="date" class="form-control" id="edit_contract_sd" name="sd" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_contract_ed">End Date: *</label>
            <div class="col-sm-3">
                <input type="date" class="form-control" id="edit_contract_ed" name="ed" required>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" for="edit_contract_note">Note: *</label>
            <div class="col-sm-6">
                <textarea class="form-control" id="edit_contract_note" name="note" placeholder="Tuliskan catatan.." required></textarea>
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
                        <label class="control-label col-sm-5" for="del_contract_contract">Contract:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_contract_contract"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_contract_note">Note:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_contract_note"></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-5" for="del_contract_status">Status:</label>
                        <div class="col-md-6">
                            <label class="control-label text-left" id="del_contract_status"></label>
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
    

<!-- Contract AJAX -->
<script type="text/javascript">

/*  Load Master data */
function getContract() {
    $.post('{{ url('api/contract/load') }}', {
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
                table.row.add([contracts[i].id, i + 1, contracts[i].contract, contracts[i].note, contracts[i].status_id, actionBtn]);
            }

            table.draw();
        }
    });
}

/* Options Dropdowns in Add/Edit Data */
function fetchContractOptions(tag) {
    $.get('{{ url('api/contract/getOptions') }}', function(data) {
        var status = data.status;
        var contract = data.contract;

        $('#' + tag + '_contract_contract_id').val('');
        $('#' + tag + '_contract_contract').empty();
        $('#' + tag + '_contract_status').empty();

        $('#' + tag + '_contract_contract_id').val(contract[0].id);

        for(var i = 0, len = contract.length; i < len; i++) {
            $('#' + tag + '_contract_contract').append($('<option>', {
                id: contract[i].id,
                text: contract[i].contract
            }));
        }

        for(var i = 0, len = status.length; i < len; i++) {
            $('#' + tag + '_contract_status').append($('<option>', {
                text: status[i]
            }));
        }
    });
}

/* Delete Confirmation */
function showContractModal(doc) {
    var table = $('#contract_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var id = row_data[0];
    var contract = row_data[2];
    var note = row_data[3];
    var status = row_data[4];

    $('#del_contract_id').val(id);
    $('#del_contract_contract').text(contract);
    $('#del_contract_note').text(note);
    $('#del_contract_status').text(status);
}

/* See Edit Form Details */
function editContractData(doc) {
    var table = $('#contract_table').DataTable();
    var tr = doc.parentNode.parentNode;

    var row_data = table.row(tr).data();
    var ac_id = row_data[0];

    fetchContractOptions('edit');

    $.post('{{ url('api/contract/show_edit') }}', {
        asset_contract_id: ac_id
    },
    function(data, textStatus) {
        var contract_id = data.datas.contract_id;

        $('#edit_contract_id').val(ac_id);
        $('#edit_contract_contract_id').val(contract_id);

        $('#edit_contract_contract').find('option[id="' + contract_id + '"]').attr('selected', 'selected');
        $('#edit_contract_status').val(data.datas.status_id);

        $('#edit_contract_sd').val(data.datas.start_date);
        $('#edit_contract_ed').val(data.datas.end_date);
        $('#edit_contract_note').val(data.datas.note);

        $('#btn_contract_edit').click();
    });
}


/* Create New Data */
function addContract() {
    $.post('{{ url('api/contract/create') }}', {
        asset_id:   {{ $asset_id }},
        contract:   $('#add_contract_contract_id').val(),
        status:     $('#add_contract_status').val(),
        sd:         $('#add_contract_sd').val(),
        ed:         $('#add_contract_ed').val(),
        note:       $('#add_contract_note').val()
    },
    function(data, textStatus) {
        getContract();
        $('#btn_contract_index').click();

        $('#add_contract_sd').val('');
        $('#add_contract_ed').val('');
        $('#add_contract_note').val('');
    });
}

/* Delete a Data */
function delContract() {
    $.post('{{ url('api/contract/del') }}', {
        contract_id: $('#del_contract_id').val()
    },
    function(data, textStatus) {
        getContract();
        $('#del_contract_id').val('');
    });
}

/* Update a Data */
function updateContract() {
    $.post('{{ url('api/contract/commit_edit') }}', {
        asset_contract_id : $('#edit_contract_id').val(),
        contract_id    : $('#edit_contract_contract_id').val(),
        status_id      : $('#edit_contract_status').val(),
        start_date     : $('#edit_contract_sd').val(),
        end_date       : $('#edit_contract_ed').val(),
        note           : $('#edit_contract_note').val()
    },
    function(data, textStatus) {
        getContract();
        $('#btn_contract_index').click();
        $('#edit_contract_data').val('');
    });
}
</script>