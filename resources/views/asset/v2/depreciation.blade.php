<!-- Depreciation -->
<!-- DEBUGGING -->
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
                <input type="hidden" id="add_contract_contract" name="contract" value="">
                <select class="form-control" onchange="document.getElementById('ac_contract').value = getID(this);">

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

<script type="text/javascript">

</script>