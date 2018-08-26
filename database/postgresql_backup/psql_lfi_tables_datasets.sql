ALTER TABLE asset DROP CONSTRAINT fk_asset_asset_loc_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_asset_type_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_costcode_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_dept_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_document_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_inventory_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_manufacturer_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_rcm_template_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_uom_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_user_3;
ALTER TABLE asset DROP CONSTRAINT fk_asset_users_1;
ALTER TABLE asset DROP CONSTRAINT fk_asset_users_2;
ALTER TABLE asset DROP CONSTRAINT fk_asset_vendor_1;
ALTER TABLE asset_comment DROP CONSTRAINT fk_asset_comment_asset_1;
ALTER TABLE asset_comment DROP CONSTRAINT fk_asset_comment_user_1;
ALTER TABLE asset_comment DROP CONSTRAINT fk_asset_comment_user_2;
ALTER TABLE asset_contract DROP CONSTRAINT fk_asset_contract_asset_1;
ALTER TABLE asset_contract DROP CONSTRAINT fk_asset_contract_contract_1;
ALTER TABLE asset_contract DROP CONSTRAINT fk_asset_modif;
ALTER TABLE asset_contract DROP CONSTRAINT fk_asset_modif_1;
ALTER TABLE asset_depreciation DROP CONSTRAINT fk_asset_create;
ALTER TABLE asset_depreciation DROP CONSTRAINT fk_asset_depreciation_asset_1;
ALTER TABLE asset_depreciation DROP CONSTRAINT fk_asset_modified;
ALTER TABLE asset_downtime DROP CONSTRAINT fk_asset_downtime_asset_1;
ALTER TABLE asset_downtime DROP CONSTRAINT fk_asset_downtime_wo_1;
ALTER TABLE asset_downtime DROP CONSTRAINT fk1;
ALTER TABLE asset_downtime DROP CONSTRAINT fk2;
ALTER TABLE asset_downtime DROP CONSTRAINT fk3;
ALTER TABLE asset_meter DROP CONSTRAINT fk_asset_meter_asset_1;
ALTER TABLE asset_meter DROP CONSTRAINT fk_asset_meter_meter_type_1;
ALTER TABLE asset_meter DROP CONSTRAINT fk_asset_meter_user_1;
ALTER TABLE asset_meter DROP CONSTRAINT fk_asset_meter_user_2;
ALTER TABLE asset_meter DROP CONSTRAINT fk_asset_uom_4;
ALTER TABLE asset_part DROP CONSTRAINT fk_asset_part_asset_1;
ALTER TABLE asset_part DROP CONSTRAINT fk_asset_part_inventory_1;
ALTER TABLE asset_part DROP CONSTRAINT fk_asset_part_uom_1;
ALTER TABLE asset_part DROP CONSTRAINT fk_asset_part_user_1;
ALTER TABLE asset_part DROP CONSTRAINT fk_asset_part_user_2;
ALTER TABLE asset_service_log DROP CONSTRAINT fk_asl_asset;
ALTER TABLE asset_service_log DROP CONSTRAINT fk_asl_asset_2;
ALTER TABLE asset_service_log DROP CONSTRAINT fk_asl_user_1;
ALTER TABLE asset_service_log DROP CONSTRAINT fk_asl_user_2;
ALTER TABLE asset_service_log DROP CONSTRAINT fk_asl_user_3;
ALTER TABLE asset_service_log DROP CONSTRAINT fk_asset_service_log_asset_1;
ALTER TABLE asset_type DROP CONSTRAINT fk_at_user;
ALTER TABLE asset_type DROP CONSTRAINT fk_at_user_2;
ALTER TABLE budget DROP CONSTRAINT fk_budget_budget_title_1;
ALTER TABLE budget_status_log DROP CONSTRAINT fk_budget_status_log_budget_1;
ALTER TABLE contract DROP CONSTRAINT fk_contract_contact_1;
ALTER TABLE contract DROP CONSTRAINT fk_contract_user_1;
ALTER TABLE contract DROP CONSTRAINT fk_contract_vendor_1;
ALTER TABLE contract_contact DROP CONSTRAINT fk_contract_contact_contact_1;
ALTER TABLE contract_contact DROP CONSTRAINT fk_contract_contact_contract_1;
ALTER TABLE contract_doc DROP CONSTRAINT fk_contract_doc_contract_1;
ALTER TABLE contract_doc DROP CONSTRAINT fk_contract_doc_document_1;
ALTER TABLE costcode DROP CONSTRAINT fk_costcode_dept_1;
ALTER TABLE doc_attachment DROP CONSTRAINT fk_doc_attachment_doc_upload_2;
ALTER TABLE doc_attachment DROP CONSTRAINT fk_doc_attachment_document_2;
ALTER TABLE document DROP CONSTRAINT fk_document_doc_type_1;
ALTER TABLE in_audit DROP CONSTRAINT fk_in_audit_user_1;
ALTER TABLE in_audit DROP CONSTRAINT fk_in_audit_inventory_1;
ALTER TABLE in_comment DROP CONSTRAINT fk_in_comment_inventory_1;
ALTER TABLE in_doc DROP CONSTRAINT fk_in_doc_document_1;
ALTER TABLE in_doc DROP CONSTRAINT fk_in_doc_inventory_1;
ALTER TABLE in_reserved DROP CONSTRAINT fk_in_reserved_inventory_1;
ALTER TABLE in_reserved DROP CONSTRAINT fk_in_reserved_workorder_1;
ALTER TABLE in_stock DROP CONSTRAINT fk_in_stock_in_location_1;
ALTER TABLE in_stock DROP CONSTRAINT fk_in_stock_inventory_1;
ALTER TABLE in_tran DROP CONSTRAINT fk_in_tran_costcode_1;
ALTER TABLE in_tran DROP CONSTRAINT fk_in_tran_in_location_1;
ALTER TABLE in_tran DROP CONSTRAINT fk_in_tran_inventory_1;
ALTER TABLE in_tran DROP CONSTRAINT fk_in_tran_user_1;
ALTER TABLE in_tran_worksheet DROP CONSTRAINT fk_in_tran_worksheet_in_tran_1;
ALTER TABLE in_vendor DROP CONSTRAINT fk_in_vendor_inventory_1;
ALTER TABLE in_vendor DROP CONSTRAINT fk_in_vendor_uom_2;
ALTER TABLE in_vendor DROP CONSTRAINT fk_in_vendor_vendor_1;
ALTER TABLE ins_citation DROP CONSTRAINT fk_ins_citation_inspection_1;
ALTER TABLE inspection DROP CONSTRAINT fk_inspection_contact_1;
ALTER TABLE inspection DROP CONSTRAINT fk_inspection_users_1;
ALTER TABLE inventory DROP CONSTRAINT fk_inventory_costcode_1;
ALTER TABLE inventory DROP CONSTRAINT fk_inventory_in_type_1;
ALTER TABLE inventory DROP CONSTRAINT fk_inventory_uom_2;
ALTER TABLE inventory DROP CONSTRAINT fk_inventory_user_1;
ALTER TABLE manufacturer DROP CONSTRAINT fk_manufacturer_contact_1;
ALTER TABLE manufacturer DROP CONSTRAINT fk_manufacturer_user_1;
ALTER TABLE manufacturer DROP CONSTRAINT fk_manufacturer_user_2;
ALTER TABLE meter_transaction DROP CONSTRAINT fk_meter_transaction_asset_meter_1;
ALTER TABLE meter_transaction DROP CONSTRAINT fk_meter_transaction_workorder_1;
ALTER TABLE meter_transaction DROP CONSTRAINT fk_meter_user_1;
ALTER TABLE meter_transaction DROP CONSTRAINT fk_meter_user_2;
ALTER TABLE meter_type DROP CONSTRAINT fk11;
ALTER TABLE meter_type DROP CONSTRAINT fk12;
ALTER TABLE pm DROP CONSTRAINT fk_pm_asset_type_1;
ALTER TABLE pm DROP CONSTRAINT fk_pm_rcm_action_1;
ALTER TABLE pm DROP CONSTRAINT fk_pm_team_1;
ALTER TABLE pm DROP CONSTRAINT fk_pm_users_1;
ALTER TABLE pm_asset DROP CONSTRAINT fk_pm_asset_asset_1;
ALTER TABLE pm_asset DROP CONSTRAINT fk_pm_asset_costcode_1;
ALTER TABLE pm_asset DROP CONSTRAINT fk_pm_asset_dept_1;
ALTER TABLE pm_asset DROP CONSTRAINT fk_pm_asset_pm_1;
ALTER TABLE pm_audit DROP CONSTRAINT fk_pm_audit_pm_1;
ALTER TABLE pm_audit DROP CONSTRAINT fk_pm_audit_user_1;
ALTER TABLE pm_comment DROP CONSTRAINT fk_pm_comment_pm_1;
ALTER TABLE pm_dependency DROP CONSTRAINT fk_pm_dependency_pm_1;
ALTER TABLE pm_doc DROP CONSTRAINT fk_pm_doc_document_1;
ALTER TABLE pm_doc DROP CONSTRAINT fk_pm_doc_pm_1;
ALTER TABLE pm_downtime DROP CONSTRAINT fk_pm_downtime_pm_1;
ALTER TABLE pm_labor DROP CONSTRAINT fk_pm_labor_craft_1;
ALTER TABLE pm_labor DROP CONSTRAINT fk_pm_labor_pm_1;
ALTER TABLE pm_meter DROP CONSTRAINT fk_pm_meter_asset;
ALTER TABLE pm_meter DROP CONSTRAINT fk_pm_meter_pm_asset_1;
ALTER TABLE pm_part DROP CONSTRAINT fk_pm_part_inventory;
ALTER TABLE pm_part DROP CONSTRAINT fk_pm_part_pm_1;
ALTER TABLE pm_safety DROP CONSTRAINT fk_pm_safety_pm_1;
ALTER TABLE pm_season DROP CONSTRAINT fk_pm_season_pm_asset_1;
ALTER TABLE pm_step DROP CONSTRAINT fk_pm_step_pm_1;
ALTER TABLE pm_tool DROP CONSTRAINT fk_pm_tool_inventory_1;
ALTER TABLE pm_tool DROP CONSTRAINT fk_pm_tool_pm_1;
ALTER TABLE po DROP CONSTRAINT fk_po_user_1;
ALTER TABLE po DROP CONSTRAINT fk_po_user_2;
ALTER TABLE po DROP CONSTRAINT fk_po_vendor_1;
ALTER TABLE po_item DROP CONSTRAINT fk_po_item_inventory_1;
ALTER TABLE po_item DROP CONSTRAINT fk_po_item_po_1;
ALTER TABLE po_item DROP CONSTRAINT fk_po_item_uom_2;
ALTER TABLE po_status_log DROP CONSTRAINT fk_po_status_log_po_1;
ALTER TABLE po_status_log DROP CONSTRAINT fk_po_status_log_users_1;
ALTER TABLE project DROP CONSTRAINT fk_project_costcode_1;
ALTER TABLE project DROP CONSTRAINT fk_project_dept_1;
ALTER TABLE project DROP CONSTRAINT fk_project_project_type_1;
ALTER TABLE project DROP CONSTRAINT fk_project_users_2;
ALTER TABLE rcm_action DROP CONSTRAINT fk_rcm_action_rcm_failure_1;
ALTER TABLE rcm_action_part DROP CONSTRAINT fk_rcm_action_part_inventory_1;
ALTER TABLE rcm_action_part DROP CONSTRAINT fk_rcm_action_part_rcm_action_1;
ALTER TABLE rcm_consequence DROP CONSTRAINT fk_rcm_consequence_rcm_failure_1;
ALTER TABLE rcm_failure DROP CONSTRAINT fk_rcm_failure_rcm_function_1;
ALTER TABLE rcm_failure DROP CONSTRAINT fk_rcm_failure_rcm_template_1;
ALTER TABLE rcm_function DROP CONSTRAINT fk_rcm_function_rcm_template_1;
ALTER TABLE req_item DROP CONSTRAINT fk_req_item_inventory_1;
ALTER TABLE req_item DROP CONSTRAINT fk_req_item_po_1;
ALTER TABLE req_item DROP CONSTRAINT fk_req_item_requisition_1;
ALTER TABLE req_item DROP CONSTRAINT fk_req_item_uom_1;
ALTER TABLE req_item DROP CONSTRAINT fk_req_item_vendor_1;
ALTER TABLE req_status_log DROP CONSTRAINT fk_changed_by;
ALTER TABLE req_status_log DROP CONSTRAINT fk_req_status_log_requisition_1;
ALTER TABLE requisition DROP CONSTRAINT fk_requisition_costcode_2;
ALTER TABLE requisition DROP CONSTRAINT fk_requisition_dept_2;
ALTER TABLE requisition DROP CONSTRAINT fk_requisition_users_1;
ALTER TABLE requisition DROP CONSTRAINT fk_requisition_users_2;
ALTER TABLE requisition DROP CONSTRAINT fk_requisition_wo_2;
ALTER TABLE sched_user DROP CONSTRAINT fk_sched_user_users_2;
ALTER TABLE scheduler_job DROP CONSTRAINT fk_scheduler_job_scheduler_task_1;
ALTER TABLE scheduler_job_log DROP CONSTRAINT fk_scheduler_job_log_scheduler_job_1;
ALTER TABLE scheduler_job_log DROP CONSTRAINT fk_scheduler_job_log_scheduler_job_2;
ALTER TABLE tax_rate DROP CONSTRAINT fk_tax_rate_tax_code_1;
ALTER TABLE training DROP CONSTRAINT fk_training_contact_2;
ALTER TABLE training DROP CONSTRAINT fk_training_training_certificate_1;
ALTER TABLE training DROP CONSTRAINT fk_training_training_course_1;
ALTER TABLE training DROP CONSTRAINT fk_training_users_1;
ALTER TABLE training_course DROP CONSTRAINT fk_training_course_training_course_type_1;
ALTER TABLE training_user DROP CONSTRAINT fk_training_user_training_1;
ALTER TABLE training_user DROP CONSTRAINT fk_training_user_users_1;
ALTER TABLE uom_map DROP CONSTRAINT fk_uom_map_uom_1;
ALTER TABLE uom_map DROP CONSTRAINT fk_uom_map_uom_2;
ALTER TABLE users DROP CONSTRAINT fk_users_acl;
ALTER TABLE users DROP CONSTRAINT fk_users_costcode;
ALTER TABLE users DROP CONSTRAINT fk_users_craft;
ALTER TABLE users DROP CONSTRAINT fk_users_dept_2;
ALTER TABLE users DROP CONSTRAINT fk_users_team;
ALTER TABLE vendor DROP CONSTRAINT fk_vendor_contact;
ALTER TABLE vendor DROP CONSTRAINT fk_vendor_task;
ALTER TABLE vendor DROP CONSTRAINT fk_vendor_user;
ALTER TABLE vendor_contact DROP CONSTRAINT fk_vc_contact;
ALTER TABLE vendor_contact DROP CONSTRAINT fk_vendor_contact_vendor_1;
ALTER TABLE wo_attachment DROP CONSTRAINT fk_wo_attachment_workorder_1;
ALTER TABLE wo_comment DROP CONSTRAINT fk_wo_comment_workorder_1;
ALTER TABLE wo_doc DROP CONSTRAINT fk_wo_doc_document;
ALTER TABLE wo_doc DROP CONSTRAINT fk_wo_doc_workorder_1;
ALTER TABLE wo_labor DROP CONSTRAINT fk_wo_labor_craft;
ALTER TABLE wo_labor DROP CONSTRAINT fk_wo_labor_user;
ALTER TABLE wo_labor DROP CONSTRAINT fk_wo_labor_workorder_1;
ALTER TABLE wo_meter DROP CONSTRAINT fk_wo_meter_workorder_1;
ALTER TABLE wo_part DROP CONSTRAINT fk_wo_part_inventory;
ALTER TABLE wo_part DROP CONSTRAINT fk_wo_part_workorder_1;
ALTER TABLE wo_planned_downtime DROP CONSTRAINT fk_wo_planned_downtime_workorder_1;
ALTER TABLE wo_planned_labor DROP CONSTRAINT fk_wo_planned_labor_workorder_1;
ALTER TABLE wo_planned_labor DROP CONSTRAINT fk_wopl_craft;
ALTER TABLE wo_planned_part DROP CONSTRAINT fk_wo_planned_part_workorder_1;
ALTER TABLE wo_planned_part DROP CONSTRAINT fk_wopp_inventory;
ALTER TABLE wo_planned_tool DROP CONSTRAINT fk_wo_planned_tool_workorder_1;
ALTER TABLE wo_safety DROP CONSTRAINT fk_wo_safety_workorder_1;
ALTER TABLE wo_sched_labor DROP CONSTRAINT fk_wo_sched_labor_workorder_1;
ALTER TABLE wo_sched_labor DROP CONSTRAINT fk_wosl_user;
ALTER TABLE wo_status_log DROP CONSTRAINT fk_wo_status_log_workorder_1;
ALTER TABLE wo_status_log DROP CONSTRAINT fk_wosl_user_2;
ALTER TABLE wo_step DROP CONSTRAINT fk_wo_step_workorder_1;
ALTER TABLE wo_tool DROP CONSTRAINT fk_wo_tool_inv;
ALTER TABLE wo_tool DROP CONSTRAINT fk_wo_tool_workorder_1;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_at;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_costcode;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_dept;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_oc;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_ou_1;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_ou_2;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_ou_3;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_pm;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_project;
ALTER TABLE workorder DROP CONSTRAINT fk_wo_rcm_action;
ALTER TABLE workorder DROP CONSTRAINT fk_workorder_asset_1;
ALTER TABLE workorder DROP CONSTRAINT fk_workorder_team_1;

-- ----------------------------
-- Table structure for acl_group
-- ----------------------------
DROP TABLE IF EXISTS acl_group;
CREATE TABLE acl_group (
  id varchar(36) NOT NULL,
  acl_group varchar(30),
  parent_group_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for asset
-- ----------------------------
DROP TABLE IF EXISTS asset;
CREATE TABLE asset (
  id varchar(36) NOT NULL,
  asset_no varchar(30),
  note varchar(76),
  priority_id varchar(36),
  status_id varchar(36),
  parent_id varchar(36),
  type_id varchar(36),
  template_id varchar(36),
  category_id varchar(36),
  location_id varchar(36),
  weight float,
  weight_uom_id varchar(36),
  serial_no varchar(30),
  owner_user_id varchar(36),
  start_date date,
  purchase_date date,
  original_cost float,
  manufacturer_id varchar(36),
  vendor_id varchar(36),
  upload_id varchar(36),
  warranty_start_date date,
  warranty_end_date date,
  maint_labor_hours float,
  maint_labor_cost float,
  maint_material_cost float,
  maint_cost float,
  rollup_cost smallint,
  costcode_id varchar(36),
  dept_id varchar(36),
  in_id varchar(36),
  depreciation_type_id varchar(36),
  depreciation_start date,
  depreciation_time_id varchar(36),
  depreciation_rate float,
  description text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for asset_comment
-- ----------------------------
DROP TABLE IF EXISTS asset_comment;
CREATE TABLE asset_comment (
  id varchar(36) NOT NULL,
  asset_id varchar(36),
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
  );

-- ----------------------------
-- Table structure for asset_contract
-- ----------------------------
DROP TABLE IF EXISTS asset_contract;
CREATE TABLE asset_contract (
  id varchar(36) NOT NULL,
  asset_id varchar(36),
  contract_id varchar(36),
  note varchar(76),
  status_id varchar(36),
  start_date date,
  end_date date,
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for asset_depreciation
-- ----------------------------
DROP TABLE IF EXISTS asset_depreciation;
CREATE TABLE asset_depreciation (
  id varchar(36) NOT NULL,
  asset_id varchar(36),
  start_date date,
  end_date date,
  depreciation_rate float,
  start_value float,
  end_value float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for asset_downtime
-- ----------------------------
DROP TABLE IF EXISTS asset_downtime;
CREATE TABLE asset_downtime (
  id varchar(36) NOT NULL,
  asset_id varchar(36),
  downtime_type_id varchar(36),
  downtime_cause_id varchar(36),
  start_time timestamp,
  shift_id varchar(36),
  end_time timestamp,
  hours float,
  wo_id varchar(36),
  reported_by_id varchar(36),
  reported_time timestamp,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for asset_meter
-- ----------------------------
DROP TABLE IF EXISTS asset_meter;
CREATE TABLE asset_meter (
  id varchar(36) NOT NULL,
  asset_id varchar(36),
  meter_no varchar(30),
  type_id varchar(36),
  reading_uom_id varchar(36),
  reading float,
  is_rollover smallint,
  time_taken timestamp,
  rollup_type_id varchar(36),
  rollover_reading float,
  rollover_count int,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for asset_part
-- ----------------------------
DROP TABLE IF EXISTS asset_part;
CREATE TABLE asset_part (
  id varchar(36) NOT NULL,
  asset_id varchar(36),
  in_id varchar(36),
  type_id varchar(36),
  qty float,
  uom_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for asset_seq
-- ----------------------------
DROP TABLE IF EXISTS asset_seq;
CREATE TABLE asset_seq (
  id int
);

-- ----------------------------
-- Table structure for asset_service_log
-- ----------------------------
DROP TABLE IF EXISTS asset_service_log;
CREATE TABLE asset_service_log (
  id varchar(36) NOT NULL,
  asset_id varchar(36),
  from_status_id varchar(36),
  to_status_id varchar(36),
  from_location_id varchar(36),
  to_location_id varchar(36),
  from_parent_id varchar(36),
  to_parent_id varchar(36),
  from_owner_id varchar(36),
  to_owner_id varchar(36),
  changed_by_id varchar(36),
  created_time timestamp,
  comment text,
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for asset_type
-- ----------------------------
DROP TABLE IF EXISTS asset_type;
CREATE TABLE asset_type (
  id varchar(36) NOT NULL,
  type varchar(30),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
 );

-- ----------------------------
-- Table structure for budget
-- ----------------------------
DROP TABLE IF EXISTS budget;
CREATE TABLE budget (
  id varchar(36) NOT NULL,
  title_id varchar(36),
  budget varchar(30),
  state_id varchar(36),
  start_date date,
  end_date date,
  budgeted float,
  app float,
  accounting float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for budget_status_log
-- ----------------------------
DROP TABLE IF EXISTS budget_status_log;
CREATE TABLE budget_status_log (
  id varchar(36) NOT NULL,
  budget_id varchar(36),
  to_state_id varchar(36),
  from_state_id varchar(36),
  changed_by_id varchar(36),
  created_time timestamp,
  comment text,
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for budget_title
-- ----------------------------
DROP TABLE IF EXISTS budget_title;
CREATE TABLE budget_title (
  id varchar(36) NOT NULL,
  title varchar(30),
  start_date date,
  end_date date,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS contact;
CREATE TABLE contact (
  id varchar(36) NOT NULL,
  full_name varchar(50),
  job_title varchar(30),
  type_id varchar(36),
  note varchar(76),
  phone_work varchar(24),
  phone_home varchar(16),
  phone_mobile varchar(16),
  email_work varchar(50),
  email_other varchar(50),
  im1_type_id varchar(36),
  im1_id varchar(30),
  im2_type_id varchar(36),
  im2_id varchar(30),
  fax varchar(16),
  company varchar(50),
  street1 varchar(50),
  street2 varchar(50),
  city varchar(50),
  state varchar(50),
  zip varchar(16),
  country varchar(50),
  asset_id varchar(36),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS contract;
CREATE TABLE contract (
  id varchar(36) NOT NULL,
  contract varchar(30),
  vendor_id varchar(36),
  note varchar(76),
  type_id varchar(36),
  status_id varchar(36),
  contact_id varchar(36),
  owner_user_id varchar(36),
  start_date date,
  end_date date,
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for contract_contact
-- ----------------------------
DROP TABLE IF EXISTS contract_contact;
CREATE TABLE contract_contact (
  id varchar(36) NOT NULL,
  contract_id varchar(36),
  contact_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for contract_doc
-- ----------------------------
DROP TABLE IF EXISTS contract_doc;
CREATE TABLE contract_doc (
  id varchar(36) NOT NULL,
  contract_id varchar(36),
  seq int,
  doc_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for costcode
-- ----------------------------
DROP TABLE IF EXISTS costcode;
CREATE TABLE costcode (
  id varchar(36) NOT NULL,
  costcode varchar(30),
  note varchar(76),
  dept_id varchar(36),
  parent_id varchar(36),
  rollup_cost smallint,
  cost_type_id varchar(36),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for craft
-- ----------------------------
DROP TABLE IF EXISTS craft;
CREATE TABLE craft (
  id varchar(36) NOT NULL,
  craft varchar(30),
  note varchar(76),
  rate float,
  ot_factor float,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for dash_wo_orig_day
-- ----------------------------
DROP TABLE IF EXISTS dash_wo_orig_day;
CREATE TABLE dash_wo_orig_day (
  id varchar(36) NOT NULL,
  counts varchar(1000),
  modified_time timestamp,
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for dash_wo_orig_md
-- ----------------------------
DROP TABLE IF EXISTS dash_wo_orig_md;
CREATE TABLE dash_wo_orig_md (
  id varchar(36) NOT NULL,
  counts varchar(1000),
  modified_time timestamp,
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS dept;
CREATE TABLE dept (
  id varchar(36) NOT NULL,
  dept varchar(30),
  note varchar(76),
  manager_id varchar(36),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS document;
CREATE TABLE document (
  id varchar(36) NOT NULL,
  document varchar(30),
  content text,
  type_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for doc_attachment
-- ----------------------------
DROP TABLE IF EXISTS doc_attachment;
CREATE TABLE doc_attachment (
  id varchar(36) NOT NULL,
  doc_id varchar(36),
  upload_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for doc_type
-- ----------------------------
DROP TABLE IF EXISTS doc_type;
CREATE TABLE doc_type (
  id varchar(36) NOT NULL,
  type varchar(30),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for doc_upload
-- ----------------------------
DROP TABLE IF EXISTS doc_upload;
CREATE TABLE doc_upload (
  id varchar(36) NOT NULL,
  file_upload varchar(250),
  access_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for downtime_unit_cost
-- ----------------------------
DROP TABLE IF EXISTS downtime_unit_cost;
CREATE TABLE downtime_unit_cost (
  id varchar(36) NOT NULL,
  asset_id varchar(36),
  downtime_type_id varchar(36),
  hourly_rate float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for inspection
-- ----------------------------
DROP TABLE IF EXISTS inspection;
CREATE TABLE inspection (
  id varchar(36) NOT NULL,
  inspection varchar(50),
  type_id varchar(36),
  inspect_contact_id varchar(36),
  inspect_user_id varchar(36),
  owner_user_id varchar(36),
  start_time timestamp,
  end_time timestamp,
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for ins_citation
-- ----------------------------
DROP TABLE IF EXISTS ins_citation;
CREATE TABLE ins_citation (
  id varchar(36) NOT NULL,
  citation varchar(50),
  inspection_id varchar(36),
  severity_id varchar(36),
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS inventory;
CREATE TABLE inventory (
  id varchar(36) NOT NULL,
  in_no varchar(30),
  note varchar(76),
  type_id varchar(36),
  category_id varchar(36),
  stock_type_id varchar(36),
  valuation_type_id varchar(36),
  abc_id varchar(36),
  abc_time timestamp,
  uom_id varchar(36),
  avg_unit_cost float,
  rent_uom_id varchar(36),
  rent_rate float,
  qty_in_stock float,
  qty_on_order float,
  qty_reserved float,
  qty_to_order float,
  order_gen_id varchar(36),
  order_type_id varchar(36),
  min_level float,
  max_level float,
  reorder_point float,
  reorder_qty float,
  owner_user_id varchar(36),
  notification_id varchar(36),
  costcode_id varchar(36),
  description text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_audit
-- ----------------------------
DROP TABLE IF EXISTS in_audit;
CREATE TABLE in_audit (
  id varchar(36) NOT NULL,
  in_id varchar(36),
  audit_user_id varchar(36),
  start_date date,
  end_date date,
  hours float,
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_comment
-- ----------------------------
DROP TABLE IF EXISTS in_comment;
CREATE TABLE in_comment (
  id varchar(36) NOT NULL,
  in_id varchar(36),
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_doc
-- ----------------------------
DROP TABLE IF EXISTS in_doc;
CREATE TABLE in_doc (
  id varchar(36) NOT NULL,
  in_id varchar(36),
  doc_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_location
-- ----------------------------
DROP TABLE IF EXISTS in_location;
CREATE TABLE in_location (
  id varchar(36) NOT NULL,
  location varchar(30),
  parent_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_reserved
-- ----------------------------
DROP TABLE IF EXISTS in_reserved;
CREATE TABLE in_reserved (
  id varchar(36) NOT NULL,
  in_id varchar(36),
  wo_id varchar(36),
  qty float,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_seq
-- ----------------------------
DROP TABLE IF EXISTS in_seq;
CREATE TABLE in_seq (
  id int
);

-- ----------------------------
-- Table structure for in_stock
-- ----------------------------
DROP TABLE IF EXISTS in_stock;
CREATE TABLE in_stock (
  id varchar(36) NOT NULL,
  in_id varchar(36),
  location_id varchar(36),
  qty float,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_tran
-- ----------------------------
DROP TABLE IF EXISTS in_tran;
CREATE TABLE in_tran (
  id varchar(36) NOT NULL,
  in_id varchar(36),
  type_id varchar(36),
  location_id varchar(36),
  qty float,
  unit_cost float,
  costcode_id varchar(36),
  checkout_type_id varchar(36),
  checkout_to_id varchar(36),
  receive_type_id varchar(36),
  receive_from_id varchar(36),
  qty_available float,
  qty_orig float,
  orig_loc_id varchar(36),
  checkout_tran_id varchar(36),
  rent_duration float,
  rent_rate float,
  tran_total float,
  note varchar(76),
  tran_time timestamp,
  tran_user_id varchar(36),
  store_user_id varchar(36),
  voided smallint,
  authorized_by_id varchar(36),
  void_by_id varchar(36),
  void_time timestamp,
  void_note varchar(76),
  new_tran_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_tran_worksheet
-- ----------------------------
DROP TABLE IF EXISTS in_tran_worksheet;
CREATE TABLE in_tran_worksheet (
  id varchar(36) NOT NULL,
  in_tran_id varchar(36),
  src_tran_id varchar(36),
  qty float,
  unit_cost float,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_type
-- ----------------------------
DROP TABLE IF EXISTS in_type;
CREATE TABLE in_type (
  id varchar(36) NOT NULL,
  type varchar(30),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for in_vendor
-- ----------------------------
DROP TABLE IF EXISTS in_vendor;
CREATE TABLE in_vendor (
  id varchar(36) NOT NULL,
  in_id varchar(36),
  vendor_id varchar(36),
  vendor_part_no varchar(30),
  is_primary smallint,
  uom_id varchar(36),
  unit_cost float,
  lead_time_days float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for manufacturer
-- ----------------------------
DROP TABLE IF EXISTS manufacturer;
CREATE TABLE manufacturer (
  id varchar(36) NOT NULL,
  manufacturer varchar(30),
  note varchar(76),
  contact_id varchar(36),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for meter_transaction
-- ----------------------------
DROP TABLE IF EXISTS meter_transaction;
CREATE TABLE meter_transaction (
  id varchar(36) NOT NULL,
  meter_id varchar(36),
  read_by_id varchar(36),
  time_taken timestamp,
  reading float,
  is_rollover smallint,
  wo_id varchar(36),
  note varchar(76),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for meter_type
-- ----------------------------
DROP TABLE IF EXISTS meter_type;
CREATE TABLE meter_type (
  id varchar(36) NOT NULL,
  type varchar(30),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm
-- ----------------------------
DROP TABLE IF EXISTS pm;
CREATE TABLE pm (
  id varchar(36) NOT NULL,
  pm_no varchar(30),
  description text,
  status_id varchar(36),
  asset_type_id varchar(36),
  rcm_action_id varchar(36),
  category_id varchar(36),
  priority_id varchar(36),
  origin_id varchar(36),
  origin_user_id varchar(36),
  assigned_to_id varchar(36),
  assigned_team_id varchar(36),
  duration_hours float,
  release_type_id varchar(36),
  schedule_type_id varchar(36),
  release_schedule varchar(1024),
  labor_hours float,
  downtime_hours float,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_asset
-- ----------------------------
DROP TABLE IF EXISTS pm_asset;
CREATE TABLE pm_asset (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  asset_id varchar(36),
  last_released date,
  last_closed date,
  next_due_date date,
  release_count int,
  costcode_id varchar(36),
  dept_id varchar(36),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_audit
-- ----------------------------
DROP TABLE IF EXISTS pm_audit;
CREATE TABLE pm_audit (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  audit_user_id varchar(36),
  start_date date,
  end_date date,
  hours float,
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_comment
-- ----------------------------
DROP TABLE IF EXISTS pm_comment;
CREATE TABLE pm_comment (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_dependency
-- ----------------------------
DROP TABLE IF EXISTS pm_dependency;
CREATE TABLE pm_dependency (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  child_pm_id varchar(36),
  type_id varchar(36),
  scope_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_doc
-- ----------------------------
DROP TABLE IF EXISTS pm_doc;
CREATE TABLE pm_doc (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  seq int,
  doc_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_downtime
-- ----------------------------
DROP TABLE IF EXISTS pm_downtime;
CREATE TABLE pm_downtime (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  hours float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_labor
-- ----------------------------
DROP TABLE IF EXISTS pm_labor;
CREATE TABLE pm_labor (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  craft_id varchar(36),
  hours float,
  crew_size int,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_meter
-- ----------------------------
DROP TABLE IF EXISTS pm_meter;
CREATE TABLE pm_meter (
  id varchar(36) NOT NULL,
  pm_asset_id varchar(36),
  meter_id varchar(36),
  release_by_meter smallint,
  reading_released float,
  rollover_count int,
  reading_interval float,
  copy_to_wo smallint,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_part
-- ----------------------------
DROP TABLE IF EXISTS pm_part;
CREATE TABLE pm_part (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  in_id varchar(36),
  qty float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_safety
-- ----------------------------
DROP TABLE IF EXISTS pm_safety;
CREATE TABLE pm_safety (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  seq int,
  description text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_season
-- ----------------------------
DROP TABLE IF EXISTS pm_season;
CREATE TABLE pm_season (
  id varchar(36) NOT NULL,
  pm_asset_id varchar(36),
  start_date date,
  end_date date,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_step
-- ----------------------------
DROP TABLE IF EXISTS pm_step;
CREATE TABLE pm_step (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  seq int,
  description text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for pm_tool
-- ----------------------------
DROP TABLE IF EXISTS pm_tool;
CREATE TABLE pm_tool (
  id varchar(36) NOT NULL,
  pm_id varchar(36),
  in_id varchar(36),
  qty float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for po
-- ----------------------------
DROP TABLE IF EXISTS po;
CREATE TABLE po (
  id varchar(36) NOT NULL,
  po_no varchar(30),
  status_id varchar(36),
  state_id varchar(36),
  buyer_id varchar(36),
  buyer_name varchar(50),
  buyer_phone varchar(24),
  po_date date,
  next_user_id varchar(36),
  next_note varchar(76),
  vendor_id varchar(36),
  vendor_addr varchar(512),
  vendor_contact_id varchar(36),
  vendor_contact_phone varchar(24),
  payment_term_id varchar(36),
  shipping_type_id varchar(36),
  shipping_term_id varchar(36),
  shipping_addr_id varchar(36),
  billing_addr_id varchar(36),
  po_item_total float,
  tax_rate_total float,
  tax_charge float,
  total_charge float,
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for po_address
-- ----------------------------
DROP TABLE IF EXISTS po_address;
CREATE TABLE po_address (
  id varchar(36) NOT NULL,
  address varchar(512),
  type_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for po_item
-- ----------------------------
DROP TABLE IF EXISTS po_item;
CREATE TABLE po_item (
  id varchar(36) NOT NULL,
  line_no int,
  po_id varchar(36),
  in_id varchar(36),
  vendor_part_no varchar(50),
  note varchar(76),
  unit_cost float,
  qty float,
  qty_received float,
  uom_id varchar(36),
  due_date date,
  line_cost float,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for po_seq
-- ----------------------------
DROP TABLE IF EXISTS po_seq;
CREATE TABLE po_seq (
  id int
);

-- ----------------------------
-- Table structure for po_status_log
-- ----------------------------
DROP TABLE IF EXISTS po_status_log;
CREATE TABLE po_status_log (
  id varchar(36) NOT NULL,
  po_id varchar(36),
  from_status_id varchar(36),
  to_status_id varchar(36),
  from_state_id varchar(36),
  to_state_id varchar(36),
  changed_by_id varchar(36),
  created_time timestamp,
  comment text,
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS project;
CREATE TABLE project (
  id varchar(36) NOT NULL,
  project_no varchar(30),
  parent_id varchar(36),
  note varchar(76),
  status_id varchar(36),
  priority_id varchar(36),
  type_id varchar(36),
  owner_user_id varchar(36),
  sched_start_time timestamp,
  sched_end_time timestamp,
  actual_start_time timestamp,
  actual_end_time timestamp,
  sched_hours float,
  actual_hours float,
  percent_done float,
  dept_id varchar(36),
  costcode_id varchar(36),
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for project_type
-- ----------------------------
DROP TABLE IF EXISTS project_type;
CREATE TABLE project_type (
  id varchar(36) NOT NULL,
  type varchar(30),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for rcm_action
-- ----------------------------
DROP TABLE IF EXISTS rcm_action;
CREATE TABLE rcm_action (
  id varchar(36) NOT NULL,
  failure_id varchar(36),
  cause varchar(50),
  action varchar(50),
  cause_type_id varchar(36),
  description text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for rcm_action_part
-- ----------------------------
DROP TABLE IF EXISTS rcm_action_part;
CREATE TABLE rcm_action_part (
  id varchar(36) NOT NULL,
  action_id varchar(36),
  in_id varchar(36),
  qty float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for rcm_consequence
-- ----------------------------
DROP TABLE IF EXISTS rcm_consequence;
CREATE TABLE rcm_consequence (
  id varchar(36) NOT NULL,
  failure_id varchar(36),
  consequence varchar(50),
  type_id varchar(36),
  pm_policy_id varchar(36),
  description text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for rcm_failure
-- ----------------------------
DROP TABLE IF EXISTS rcm_failure;
CREATE TABLE rcm_failure (
  id varchar(36) NOT NULL,
  failure varchar(50),
  is_evident smallint,
  function_id varchar(36),
  template_id varchar(36),
  description text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for rcm_function
-- ----------------------------
DROP TABLE IF EXISTS rcm_function;
CREATE TABLE rcm_function (
  id varchar(36) NOT NULL,
  fn_name varchar(50),
  template_id varchar(36),
  description text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for rcm_template
-- ----------------------------
DROP TABLE IF EXISTS rcm_template;
CREATE TABLE rcm_template (
  id varchar(36) NOT NULL,
  template varchar(30),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS recycle_bin;
CREATE TABLE recycle_bin (
  id varchar(36) NOT NULL,
  parent_id varchar(36),
  description varchar(256),
  table_name varchar(30),
  rec_id varchar(36),
  value_deleted text,
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for requisition
-- ----------------------------
DROP TABLE IF EXISTS requisition;
CREATE TABLE requisition (
  id varchar(36) NOT NULL,
  req_no varchar(30),
  description text,
  priority_id varchar(36),
  status_id varchar(36),
  req_on_po_id varchar(36),
  source_id varchar(36),
  state_id varchar(36),
  due_date date,
  shipping_type_id varchar(36),
  wo_id varchar(36),
  request_user_id varchar(36),
  request_time timestamp,
  req_total float,
  costcode_id varchar(36),
  dept_id varchar(36),
  next_user_id varchar(36),
  next_note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for req_item
-- ----------------------------
DROP TABLE IF EXISTS req_item;
CREATE TABLE req_item (
  id varchar(36) NOT NULL,
  req_id varchar(36),
  in_id varchar(36),
  vendor_id varchar(36),
  vendor_part_no varchar(50),
  unit_cost float,
  qty float,
  uom_id varchar(36),
  line_cost float,
  po_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for req_seq
-- ----------------------------
DROP TABLE IF EXISTS req_seq;
CREATE TABLE req_seq (
  id int
);

-- ----------------------------
-- Table structure for req_status_log
-- ----------------------------
DROP TABLE IF EXISTS req_status_log;
CREATE TABLE req_status_log (
  id varchar(36) NOT NULL,
  req_id varchar(36),
  from_status_id varchar(36),
  to_status_id varchar(36),
  from_state_id varchar(36),
  to_state_id varchar(36),
  changed_by_id varchar(36),
  created_time timestamp,
  comment text,
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for scheduler_job
-- ----------------------------
DROP TABLE IF EXISTS scheduler_job;
CREATE TABLE scheduler_job (
  id varchar(36) NOT NULL,
  task_id varchar(36),
  note varchar(76),
  is_active smallint,
  start_seq int DEFAULT '0',
  release_time varchar(512),
  release_day varchar(1024),
  time_due timestamp,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for scheduler_job_log
-- ----------------------------
DROP TABLE IF EXISTS scheduler_job_log;
CREATE TABLE scheduler_job_log (
  id varchar(36) NOT NULL,
  job_id varchar(36),
  start_time timestamp,
  end_time timestamp,
  time_taken float,
  results text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for scheduler_task
-- ----------------------------
DROP TABLE IF EXISTS scheduler_task;
CREATE TABLE scheduler_task (
  id varchar(36) NOT NULL,
  task varchar(30),
  note varchar(76),
  class_name varchar(76),
  class_path varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for sched_shutdown
-- ----------------------------
DROP TABLE IF EXISTS sched_shutdown;
CREATE TABLE sched_shutdown (
  id varchar(36) NOT NULL,
  shutdown varchar(30),
  start_time timestamp,
  end_time timestamp,
  hours float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for sched_user
-- ----------------------------
DROP TABLE IF EXISTS sched_user;
CREATE TABLE sched_user (
  id varchar(36) NOT NULL,
  user_id varchar(36),
  sched_date date,
  shift_id varchar(36),
  total_hours float,
  sched_hours float,
  hours_sched float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for semaphore
-- ----------------------------
DROP TABLE IF EXISTS semaphore;
CREATE TABLE semaphore (
  id varchar(36) NOT NULL,
  expire_time timestamp,
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for tax_code
-- ----------------------------
DROP TABLE IF EXISTS tax_code;
CREATE TABLE tax_code (
  id varchar(36) NOT NULL,
  tax_code varchar(30),
  tax_rate_total float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for tax_rate
-- ----------------------------
DROP TABLE IF EXISTS tax_rate;
CREATE TABLE tax_rate (
  id varchar(36) NOT NULL,
  tax_code_id varchar(36),
  tax_rate float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS team;
CREATE TABLE team (
  id varchar(36) NOT NULL,
  team varchar(30),
  note varchar(76),
  lead_id varchar(36),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for training
-- ----------------------------
DROP TABLE IF EXISTS training;
CREATE TABLE training (
  id varchar(36) NOT NULL,
  training varchar(50),
  course_id varchar(36),
  instructor_user_id varchar(36),
  instructor_contact_id varchar(36),
  start_time timestamp,
  end_time timestamp,
  certificate_id varchar(36),
  description text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for training_certificate
-- ----------------------------
DROP TABLE IF EXISTS training_certificate;
CREATE TABLE training_certificate (
  id varchar(36) NOT NULL,
  certificate varchar(30),
  description text,
  days_valid int,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for training_course
-- ----------------------------
DROP TABLE IF EXISTS training_course;
CREATE TABLE training_course (
  id varchar(36) NOT NULL,
  course varchar(30),
  description text,
  type_id varchar(36),
  hours float,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for training_course_type
-- ----------------------------
DROP TABLE IF EXISTS training_course_type;
CREATE TABLE training_course_type (
  id varchar(36) NOT NULL,
  type varchar(30),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for training_user
-- ----------------------------
DROP TABLE IF EXISTS training_user;
CREATE TABLE training_user (
  id varchar(36) NOT NULL,
  training_id varchar(36),
  user_id varchar(36),
  status_id varchar(36),
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for uom
-- ----------------------------
DROP TABLE IF EXISTS uom;
CREATE TABLE uom (
  id varchar(36) NOT NULL,
  uom varchar(30),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for uom_map
-- ----------------------------
DROP TABLE IF EXISTS uom_map;
CREATE TABLE uom_map (
  id varchar(36) NOT NULL,
  uom_src_id varchar(36),
  uom_dst_id varchar(36),
  qty float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id varchar(36) NOT NULL,
  username varchar(50),
  status_id varchar(36),
  password varchar(32),
  user_type_id varchar(36),
  emp_no varchar(30),
  contractor_id varchar(36),
  job_role_id varchar(36),
  login_allowed smallint DEFAULT '1',
  full_name varchar(50),
  job_title varchar(30),
  note varchar(76),
  acl_group_id varchar(36),
  admin_type_id varchar(36) DEFAULT 'search_admin_none',
  team_id varchar(36),
  supervisor_id varchar(36),
  dept_id varchar(36),
  costcode_id varchar(36),
  req_approval_id varchar(36),
  po_approval_id varchar(36),
  craft_id varchar(36),
  phone_work varchar(24),
  phone_home varchar(16),
  phone_mobile varchar(16),
  email_work varchar(50),
  email_other varchar(50),
  im1_type_id varchar(36),
  im1_id varchar(30),
  im2_type_id varchar(36),
  im2_id varchar(30),
  fax varchar(16),
  company varchar(50),
  street1 varchar(50),
  street2 varchar(50),
  city varchar(50),
  state varchar(50),
  zip varchar(16),
  country varchar(50),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for vendor
-- ----------------------------
DROP TABLE IF EXISTS vendor;
CREATE TABLE vendor (
  id varchar(36) NOT NULL,
  vendor varchar(30),
  tax_code_id varchar(36),
  status_id varchar(36),
  owner_user_id varchar(36),
  note varchar(76),
  contact_id varchar(36),
  address varchar(512),
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for vendor_contact
-- ----------------------------
DROP TABLE IF EXISTS vendor_contact;
CREATE TABLE vendor_contact (
  id varchar(36) NOT NULL,
  vendor_id varchar(36),
  contact_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS version;
CREATE TABLE version (
  id varchar(36) NOT NULL,
  vid varchar(30),
  note varchar(76),
  props varchar(2000),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for version_upgrade_log
-- ----------------------------
DROP TABLE IF EXISTS version_upgrade_log;
CREATE TABLE version_upgrade_log (
  id varchar(36) NOT NULL,
  vid varchar(30),
  ver_note varchar(76),
  prev_vid varchar(30),
  prev_ver_note varchar(76),
  prev_props varchar(2000),
  status_id varchar(36),
  start_time timestamp,
  end_time timestamp,
  upgrade_note varchar(76),
  results text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for workorder
-- ----------------------------
DROP TABLE IF EXISTS workorder;
CREATE TABLE workorder (
  id varchar(36) NOT NULL,
  wo_no varchar(30),
  note varchar(76),
  description text,
  asset_id varchar(36),
  pm_id varchar(36),
  asset_note varchar(76),
  category_id varchar(36),
  status_id varchar(36),
  priority_id varchar(36),
  resolution_id varchar(36),
  duplicate_wo_id varchar(36),
  rcm_action_id varchar(36),
  parent_wo_id varchar(36),
  origin_id varchar(36),
  rework_wo_id varchar(36),
  orig_contact_id varchar(36),
  orig_user_id varchar(36),
  orig_time timestamp,
  assigned_team_id varchar(36),
  assigned_to_id varchar(36),
  assigned_by_id varchar(36),
  assigned_time timestamp,
  time_needed timestamp,
  planned_start_time timestamp,
  sched_start_time timestamp,
  sched_start_shift_id varchar(36),
  actual_start_time timestamp,
  actual_start_shift_id varchar(36),
  planned_finish_time timestamp,
  sched_finish_time timestamp,
  sched_finish_shift_id varchar(36),
  actual_finish_time timestamp,
  actual_finish_shift_id varchar(36),
  costcode_id varchar(36),
  project_id varchar(36),
  dept_id varchar(36),
  planned_labor_hours float,
  sched_labor_hours float,
  actual_labor_hours float,
  labor_cost float,
  material_cost float,
  total_cost float,
  planned_downtime_hours float,
  actual_downtime_hours float,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_attachment
-- ----------------------------
DROP TABLE IF EXISTS wo_attachment;
CREATE TABLE wo_attachment (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  file_url varchar(1000),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_comment
-- ----------------------------
DROP TABLE IF EXISTS wo_comment;
CREATE TABLE wo_comment (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  comment text,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_doc
-- ----------------------------
DROP TABLE IF EXISTS wo_doc;
CREATE TABLE wo_doc (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  seq int,
  doc_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_generation
-- ----------------------------
DROP TABLE IF EXISTS wo_generation;
CREATE TABLE wo_generation (
  id varchar(36) NOT NULL,
  status_id varchar(36),
  to_date date,
  wo_count int,
  note varchar(76),
  modified_time timestamp,
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_labor
-- ----------------------------
DROP TABLE IF EXISTS wo_labor;
CREATE TABLE wo_labor (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  user_id varchar(36),
  time_type_id varchar(36),
  start_time timestamp,
  shift_id varchar(36),
  craft_id varchar(36),
  hours float,
  ot_hours float,
  rate float,
  ot_factor float,
  line_cost float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_meter
-- ----------------------------
DROP TABLE IF EXISTS wo_meter;
CREATE TABLE wo_meter (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  meter_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_part
-- ----------------------------
DROP TABLE IF EXISTS wo_part;
CREATE TABLE wo_part (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  in_id varchar(36),
  qty_used float,
  line_cost float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_planned_downtime
-- ----------------------------
DROP TABLE IF EXISTS wo_planned_downtime;
CREATE TABLE wo_planned_downtime (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  hours float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_planned_labor
-- ----------------------------
DROP TABLE IF EXISTS wo_planned_labor;
CREATE TABLE wo_planned_labor (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  craft_id varchar(36),
  hours float,
  crew_size int,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_planned_part
-- ----------------------------
DROP TABLE IF EXISTS wo_planned_part;
CREATE TABLE wo_planned_part (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  in_id varchar(36),
  qty float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_planned_tool
-- ----------------------------
DROP TABLE IF EXISTS wo_planned_tool;
CREATE TABLE wo_planned_tool (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  in_id varchar(36),
  qty float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_safety
-- ----------------------------
DROP TABLE IF EXISTS wo_safety;
CREATE TABLE wo_safety (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  seq int,
  description text,
  followed smallint,
  followed_by_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_sched_labor
-- ----------------------------
DROP TABLE IF EXISTS wo_sched_labor;
CREATE TABLE wo_sched_labor (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  user_id varchar(36),
  start_time timestamp,
  shift_id varchar(36),
  hours float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_semaphore
-- ----------------------------
DROP TABLE IF EXISTS wo_semaphore;
CREATE TABLE wo_semaphore (
  id varchar(36) NOT NULL,
  expiration timestamp,
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_seq
-- ----------------------------
DROP TABLE IF EXISTS wo_seq;
CREATE TABLE wo_seq (
  id int
);

-- ----------------------------
-- Table structure for wo_status_log
-- ----------------------------
DROP TABLE IF EXISTS wo_status_log;
CREATE TABLE wo_status_log (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  to_status_id varchar(36),
  from_status_id varchar(36),
  changed_by_id varchar(36),
  created_time timestamp,
  comment text,
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_step
-- ----------------------------
DROP TABLE IF EXISTS wo_step;
CREATE TABLE wo_step (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  seq int,
  description text,
  completed smallint,
  completed_by_id varchar(36),
  completed_time timestamp,
  shift_id varchar(36),
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for wo_tool
-- ----------------------------
DROP TABLE IF EXISTS wo_tool;
CREATE TABLE wo_tool (
  id varchar(36) NOT NULL,
  wo_id varchar(36),
  in_id varchar(36),
  qty_checkout float,
  qty_return float,
  line_cost float,
  note varchar(76),
  modified_time timestamp,
  modified_id varchar(36),
  created_time timestamp,
  created_id varchar(36),
  PRIMARY KEY (id)
);

INSERT INTO acl_group (id, acl_group, parent_group_id, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'ADMIN', 'CUSTOM_SYSTEM', 'Root group to use for all admin groups', '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000'),
('10001', 'USERS', 'CUSTOM_SYSTEM', 'Root group to use for all non-admin users', '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000'),
('CUSTOM_SYSTEM', 'Custom system', NULL, 'Customization/configuration shared by all other groups', '2018-06-25 07:01:47', '1000000', '2018-06-25 07:01:47', '1000000');
INSERT INTO asset (id, asset_no, note, priority_id, status_id, parent_id, type_id, template_id, category_id, location_id, weight, weight_uom_id, serial_no, owner_user_id, start_date, purchase_date, original_cost, manufacturer_id, vendor_id, upload_id, warranty_start_date, warranty_end_date, maint_labor_hours, maint_labor_cost, maint_material_cost, maint_cost, rollup_cost, costcode_id, dept_id, in_id, depreciation_type_id, depreciation_start, depreciation_time_id, depreciation_rate, description, modified_time, modified_id, created_time, created_id) VALUES
('10000', '100-001', 'Office area', 'Non-Production', 'In service', NULL, '100100', NULL, 'Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000'),
('10001', '100-002', 'Production area', 'Production', 'In service', NULL, '100100', NULL, 'Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000'),
('10002', '100-003', 'Warehouse and shipping area', 'Non-Production', 'In service', NULL, '100100', NULL, 'Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000'),
('10003', '100-004', 'Raw material area', 'Non-Production', 'In service', NULL, '100100', NULL, 'Location', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000'),
('10004', '200-001', 'Production system Mercury', 'Production', 'In service', NULL, '100200', NULL, 'System', '10001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:49', '1000000', '2018-06-25 07:01:49', '1000000'),
('10005', '200-002', 'Production system Saturn', 'Production', 'In service', NULL, '100200', NULL, 'System', '10001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:49', '1000000', '2018-06-25 07:01:49', '1000000'),
('10006', '300-001', 'Mercury console suite', 'Production', 'In service', NULL, '100300', NULL, 'Building', '10001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:49', '1000000', '2018-06-25 07:01:49', '1000000'),
('10008', '401-001', '100 HP compressor #1', 'Production', 'In service', '10004', '10000', NULL, 'Equipment', '10001', 767, '10000', 'AC-1000-4567890', NULL, '2005-07-01', '2005-06-01', 5000, '10000', '10000', NULL, '2005-06-01', '2010-05-31', NULL, NULL, NULL, NULL, 1, '401', '500', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:49', '1000000', '2018-06-25 07:01:49', '1000000'),
('10009', '402-001', 'Water pump #1', 'Production', 'In service', '10004', '10001', NULL, 'Equipment', '10001', 1000, '10000', 'WP-1780-7799-3F-01', NULL, '2005-08-01', '2005-07-01', 100000, '10000', '10000', NULL, '2005-09-01', '2010-08-31', NULL, NULL, NULL, NULL, 1, '401', '500', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:49', '1000000', '2018-06-25 07:01:49', '1000000');
INSERT INTO asset_comment (id, asset_id, comment, modified_time, modified_id, created_time, created_id) VALUES
('10000', '10008', 'Performed very well since start. Monthly PM seems effective.', '2018-06-25 07:01:49', '1000000', '2018-06-25 07:01:49', '1000000');
INSERT INTO asset_depreciation (id, asset_id, start_date, end_date, depreciation_rate, start_value, end_value, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', '10008', '2005-07-01', '2006-06-30', 0.2, 5000, 4000, 'First of 5 installments of depreciation', '2018-06-25 07:01:49', '1000000', '2018-06-25 07:01:49', '1000000');
INSERT INTO asset_downtime (id, asset_id, downtime_type_id, downtime_cause_id, start_time, shift_id, end_time, hours, wo_id, reported_by_id, reported_time, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', '10008', 'as_dt_pm', 'as_dc_other', '2006-10-01 08:00:00', NULL, '2006-10-01 14:00:00', 6, NULL, NULL, NULL, 'Down for montly PM.', '2018-06-25 07:01:49', '1000000', '2018-06-25 07:01:49', '1000000');
INSERT INTO asset_meter (id, asset_id, meter_no, type_id, reading_uom_id, reading, is_rollover, time_taken, rollup_type_id, rollover_reading, rollover_count, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', '10008', 'MOTOR-1', '10000', '10003', 23400, NULL, '2006-05-01 20:00:00', 'as_mrt_none', 100000, 0, 'Motor #1 odometer', '2018-06-25 07:01:49', '1000000', '2018-06-25 07:01:49', '1000000');
INSERT INTO asset_part (id, asset_id, in_id, type_id, qty, uom_id, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', '10008', '10000', 'as_part_major', 1, '10001', 'Used for monthly PM', '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000');
INSERT INTO asset_seq (id) VALUES
(0);
INSERT INTO asset_type (id, type, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', '401', 'Air compressors', '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('10001', '402', 'Water pump', '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('100100', '100', 'Location general', '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('100200', '200', 'System general', '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('100300', '300', 'Building general', '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('100400', '400', 'Equipment general', '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000');
INSERT INTO budget (id, title_id, budget, state_id, start_date, end_date, budgeted, app, accounting, note, modified_time, modified_id, created_time, created_id) VALUES
('1', '2', 'Q1-2006', 'budget_state_open', '2006-01-01', '2006-03-31', 56000, 50000, 75000, NULL, '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('2', '2', 'Q2-2006', 'budget_state_open', '2006-04-01', '2006-06-30', 20000, 15000, 17000, NULL, '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('3', '2', 'Q3-2006', 'budget_state_open', '2006-07-01', '2006-09-30', 100000, 99000, 120000, NULL, '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000');
INSERT INTO budget_title (id, title, start_date, end_date, note, modified_time, modified_id, created_time, created_id) VALUES
('1', '2005 Budget', '2005-01-01', '2005-12-31', $$Sorry but it's not done$$, '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('2', '2006 Budget', '2006-01-01', '2006-12-31', 'This is the first budget effort', '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000');
INSERT INTO contact (id, full_name, job_title, type_id, note, phone_work, phone_home, phone_mobile, email_work, email_other, im1_type_id, im1_id, im2_type_id, im2_id, fax, company, street1, street2, city, state, zip, country, asset_id, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'John Sharp', 'Sales support engineer', NULL, 'First line contact', '506-234-7780', NULL, NULL, 'john.sharp@acme.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Acme Systems, Inc.', '13040 Sunbeam Blvd.', NULL, 'Sun city', NULL, '65010', 'USA', NULL, '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('10001', 'Todd Barkman', 'Systems engineer', NULL, 'Third level support', '506-234-7780', NULL, NULL, 'todd.barkman@acme.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Acme Systems, Inc.', '13040 Sunbeam Blvd.', NULL, 'Sun city', NULL, '65010', 'USA', NULL, '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000'),
('10002', 'James Freeman', 'Systems engineer', NULL, 'Third level support', '806-234-7780', NULL, NULL, 'james.freeman@isi.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Industrial Suppliers', '7801 Industrial Blvd.', NULL, 'Horizon city', NULL, '51010', 'USA', NULL, '2018-06-25 07:01:50', '1000000', '2018-06-25 07:01:50', '1000000');
INSERT INTO costcode (id, costcode, note, dept_id, parent_id, rollup_cost, cost_type_id, modified_time, modified_id, created_time, created_id) VALUES
('100', '3500', 'Labor cost', '0', NULL, 0, 'cost_labor', '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('101', '3500-200-100', 'Employee labor', '200', '100', 1, 'cost_employee_labor', '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('102', '3500-200-200', 'Contractor labor', '200', '100', 1, 'cost_contractor_labor', '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('200', '4500', 'Material cost', '0', NULL, 0, 'cost_material', '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('201', '4500-200-300', 'Internal material', '200', '200', 1, 'cost_internal_material', '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('202', '4500-200-400', 'Contractor material for maintenance dept', '200', '200', 1, 'cost_contractor_material', '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('300', '5500', 'Training cost', '0', NULL, 0, 'cost_training', '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('301', '5500-200-500', 'Training cost for maintenance dept', '200', '300', 1, 'cost_training', '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('401', '6500', 'Production', '500', NULL, NULL, 'cost_operations', '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000');
INSERT INTO craft (id, craft, note, rate, ot_factor, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'ELECTRICIAN', 'Electricians', NULL, 1.5, '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('10001', 'MECHANIC', 'Mechanic', NULL, 1.5, '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('10002', 'HANDYMAN', 'Handyman', NULL, 1.5, '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000'),
('10003', 'IT', 'IT Specialist', NULL, 1.5, '2018-06-25 07:01:51', '1000000', '2018-06-25 07:01:51', '1000000');
INSERT INTO dash_wo_orig_md (id, counts, modified_time) VALUES
('2007-09-01', $$a:1:{s:11:"woo_request";i:3;}$$, '2018-06-25 07:01:56'),
('2007-10-01', $$a:1:{s:11:"woo_request";i:2;}$$, '2018-06-25 07:01:56');
INSERT INTO dept (id, dept, note, manager_id, modified_time, modified_id, created_time, created_id) VALUES
('0', 'PLANT', 'the whole plant', NULL, '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('100', 'ADMIN', 'Administration', NULL, '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('200', 'MAINTENANCE', 'Maintenance department', NULL, '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('300', 'INVENTORY', 'Inventory department', NULL, '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('400', 'PURCHASE', 'Purchasing department', NULL, '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('500', 'PRODUCTION', 'Production', NULL, '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000');
INSERT INTO document (id, document, content, type_id, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'SAFETY-100-2010', NULL, NULL, 'General location safety notes.', '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('10001', 'OPS-100-2010', NULL, NULL, 'General operation guides', '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000');
INSERT INTO doc_type (id, type, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'MANUAL-EQ', 'Equipment manual', '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('10001', 'MANUAL-BUILDING', 'Building manual', '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('10002', 'SAFETY', 'Safety documents', '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000');
INSERT INTO inventory (id, in_no, note, type_id, category_id, stock_type_id, valuation_type_id, abc_id, abc_time, uom_id, avg_unit_cost, rent_uom_id, rent_rate, qty_in_stock, qty_on_order, qty_reserved, qty_to_order, order_gen_id, order_type_id, min_level, max_level, reorder_point, reorder_qty, owner_user_id, notification_id, costcode_id, description, modified_time, modified_id, created_time, created_id) VALUES
('10000', '100HP-COMPRESSOR-BEARING', 'Compressor bearing for 100 HP compressors', NULL, 'icg_part', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('10001', '1000-PUMP-SEAL', 'Pump seal', NULL, 'icg_part', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000'),
('10002', 'POWERTOOL-1000', 'Industrial 1000 series power tools', NULL, 'icg_tool', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:52', '1000000', '2018-06-25 07:01:52', '1000000');
INSERT INTO in_location (id, location, parent_id, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'MAIN-STORE', NULL, 'Main store for receiving parts/tools.', '2018-06-25 07:01:53', '1000000', '2018-06-25 07:01:53', '1000000'),
('10001', 'TC-PROD', '10000', 'Production tool crib area ', '2018-06-25 07:01:53', '1000000', '2018-06-25 07:01:53', '1000000'),
('10002', 'TC-PROD-S1', '10001', 'Shelf 1 of production tool crib', '2018-06-25 07:01:53', '1000000', '2018-06-25 07:01:53', '1000000'),
('10003', 'TC-PROD-L4', '10001', 'Lot 4 of production tool crib', '2018-06-25 07:01:53', '1000000', '2018-06-25 07:01:53', '1000000'),
('10004', 'MS-B3', '10000', 'Bin 3 of main store', '2018-06-25 07:01:53', '1000000', '2018-06-25 07:01:53', '1000000');
INSERT INTO in_seq (id) VALUES
(0);
INSERT INTO in_tran (id, in_id, type_id, location_id, qty, unit_cost, costcode_id, checkout_type_id, checkout_to_id, receive_type_id, receive_from_id, qty_available, qty_orig, orig_loc_id, checkout_tran_id, rent_duration, rent_rate, tran_total, note, tran_time, tran_user_id, store_user_id, voided, authorized_by_id, void_by_id, void_time, void_note, new_tran_id, created_time, created_id) VALUES
('10000', '10000', 'itt_checkout', '10000', 3, 35, '200', 'ict_asset', '10000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95, 'Sample checkout transaction to asset', '2007-02-13 23:30:00', NULL, '1000000', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:53', '1000000'),
('10001', '10000', 'itt_return', '10000', 3, 35, '200', 'ict_asset', '10000', NULL, NULL, NULL, NULL, NULL, '10000', NULL, NULL, 95, 'Sample checkout transaction to asset', '2007-02-13 23:30:00', NULL, '1000000', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:53', '1000000'),
('10002', '10002', 'itt_checkout', '10000', 1, 100, '200', 'ict_asset', '10000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 0, 'Tool checkout', '2007-02-13 23:30:00', NULL, '1000000', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:53', '1000000'),
('10003', '10002', 'itt_return', '10000', 1, 35, '200', 'ict_asset', '10000', NULL, NULL, NULL, NULL, NULL, '10002', 3, 10, 30, 'Sample checkout transaction to asset', '2007-02-13 23:30:00', NULL, '1000000', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:53', '1000000'),
('10004', '10002', 'itt_move', '10000', 3, 35, '200', 'ict_asset', '10000', NULL, NULL, NULL, NULL, '10003', NULL, NULL, 10, 95, 'Sample checkout transaction to asset', '2007-02-13 23:30:00', NULL, '1000000', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:53', '1000000'),
('10005', '10002', 'itt_physical', '10000', 3, 35, '200', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'Sample checkout transaction to asset', '2007-02-13 23:30:00', NULL, '1000000', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:53', '1000000'),
('10006', '10002', 'itt_receive', '10000', 3, 35, '200', NULL, NULL, 'rcf_po', '10000', 3, NULL, NULL, NULL, NULL, NULL, 90, 'Sample checkout transaction to asset', '2007-02-13 23:30:00', NULL, '1000000', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:53', '1000000'),
('10007', '10002', 'itt_return', '10000', 1, 30, '200', 'ict_asset', '10000', NULL, NULL, NULL, NULL, NULL, '10002', 3, 10, 30, 'Sample checkout transaction to asset', '2007-02-13 23:30:00', NULL, '1000000', 1, '1000000', '1000000', NULL, NULL, NULL, '2018-06-25 07:01:53', '1000000'),
('10008', '10002', 'itt_receive', '10000', 3, 40, '200', NULL, NULL, 'rcf_po', '10001', 3, NULL, NULL, NULL, NULL, NULL, 120, 'Sample checkout transaction to asset', '2007-02-13 23:30:00', NULL, '1000000', NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:53', '1000000');
INSERT INTO in_tran_worksheet (id, in_tran_id, src_tran_id, qty, unit_cost, modified_time, modified_id, created_time, created_id) VALUES
('10000', '10000', '10006', 1, 30, '2018-06-25 07:01:53', '1000000', '2018-06-25 07:01:53', '1000000'),
('10001', '10000', '10008', 2, 40, '2018-06-25 07:01:53', '1000000', '2018-06-25 07:01:53', '1000000');
INSERT INTO in_type (id, type, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'TONER', 'Printer toner', '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000'),
('10001', 'BULB-60', '60w bulbs', '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000');
INSERT INTO manufacturer (id, manufacturer, note, contact_id, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'Precision Systems, Inc.', 'Primary supplier of parts', '10000', '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000');
INSERT INTO meter_transaction (id, meter_id, read_by_id, time_taken, reading, is_rollover, wo_id, note, created_time, created_id) VALUES
('10000', '10000', '1003', '2006-05-01 20:00:00', 23400, NULL, NULL, 'Inspection tour', '2018-06-25 07:01:54', '1000000');
INSERT INTO meter_type (id, type, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'MOTOR-ODOMETER', 'Motor odometer', '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000'),
('10001', 'WATER-METER', 'Water meter', '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000');
INSERT INTO pm (id, pm_no, description, status_id, asset_type_id, rcm_action_id, category_id, priority_id, origin_id, origin_user_id, assigned_to_id, assigned_team_id, duration_hours, release_type_id, schedule_type_id, release_schedule, labor_hours, downtime_hours, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'MOTOR-M3', 'Motor oil change every three months', 'pm_status_active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000');
INSERT INTO po (id, po_no, status_id, state_id, buyer_id, buyer_name, buyer_phone, po_date, next_user_id, next_note, vendor_id, vendor_addr, vendor_contact_id, vendor_contact_phone, payment_term_id, shipping_type_id, shipping_term_id, shipping_addr_id, billing_addr_id, po_item_total, tax_rate_total, tax_charge, total_charge, comment, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'PO-10001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000'),
('10001', 'PO-10002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000');
INSERT INTO po_address (id, address, type_id, note, modified_time, modified_id, created_time, created_id) VALUES
('po_billing_addr', 'TBO Corporation\\n1101 Broadway Blvd.\\nAustin, TX 78701\\nAttn: Billing', 'pat_billing', NULL, '2018-06-25 07:01:47', '1000000', '2018-06-25 07:01:47', '1000000'),
('po_shipping_addr', 'TBO Corporation\\n1101 Broadway Blvd.\\nAustin, TX 78701\\nAttn: Shipping', 'pat_shipping', NULL, '2018-06-25 07:01:47', '1000000', '2018-06-25 07:01:47', '1000000');
INSERT INTO po_seq (id) VALUES
(0);
INSERT INTO req_seq (id) VALUES
(0);
INSERT INTO scheduler_task (id, task, note, class_name, class_path, modified_time, modified_id, created_time, created_id) VALUES
('wo_gen_001', 'WO Generation', 'Process to generate workorders in the background', 'CalemWoGenTask', 'server/modules/workorder/proc', '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000');
INSERT INTO uom (id, uom, note, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'POUND', 'weight unit', '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000'),
('10001', 'EACH', 'Single piece', '2018-06-25 07:01:54', '1000000', '2018-06-25 07:01:54', '1000000'),
('10002', 'ACME_PIN_BOX', 'Box for Acme pins', '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('10003', 'ROTATION', 'Motor reading unit', '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('uom_day', 'DAY', 'Rent duration', '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('uom_hour', 'HOUR', 'Rent duration', '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000');
INSERT INTO users (id, username, status_id, password, user_type_id, emp_no, contractor_id, job_role_id, login_allowed, full_name, job_title, note, acl_group_id, admin_type_id, team_id, supervisor_id, dept_id, costcode_id, req_approval_id, po_approval_id, craft_id, phone_work, phone_home, phone_mobile, email_work, email_other, im1_type_id, im1_id, im2_type_id, im2_id, fax, company, street1, street2, city, state, zip, country, modified_time, modified_id, created_time, created_id) VALUES
('1000000', 'admin', NULL, 'dc3565645d8002becb5fd7977aeef3e1', NULL, NULL, NULL, NULL, 1, 'Administrator', NULL, NULL, 'CUSTOM_SYSTEM', 'search_admin_none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000'),
('1002', 'mark.patterson@myeam.com', NULL, '2b6bb87bfb1df29f9072f9cfb180f084', NULL, NULL, NULL, NULL, 1, 'Mark Patterson', NULL, NULL, '10000', 'search_admin_none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('1003', 'ken.wilson@myeam.com', NULL, 'abd7372bba55577590736ef6cb3533c6', NULL, NULL, NULL, NULL, 1, 'Ken Wilson', NULL, NULL, '10001', 'search_admin_none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000');
INSERT INTO vendor (id, vendor, tax_code_id, status_id, owner_user_id, note, contact_id, address, comment, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'Industrial Suppliers, Inc.', NULL, NULL, NULL, 'Suppliers for industrial parts', '10002', NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('10001', '5-STAR', NULL, NULL, NULL, '5-STAR office supply', NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('10002', 'CMB', NULL, NULL, NULL, 'CMB staff services', NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('10003', 'CSS', NULL, NULL, NULL, 'CSS IT services', NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000');
INSERT INTO version (id, vid, note, props, modified_time, modified_id, created_time, created_id) VALUES
('VERSION_ID', 'r2-1-0d', 'Calem Community Edition r2.1d', NULL, '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000');
INSERT INTO workorder (id, wo_no, note, description, asset_id, pm_id, asset_note, category_id, status_id, priority_id, resolution_id, duplicate_wo_id, rcm_action_id, parent_wo_id, origin_id, rework_wo_id, orig_contact_id, orig_user_id, orig_time, assigned_team_id, assigned_to_id, assigned_by_id, assigned_time, time_needed, planned_start_time, sched_start_time, sched_start_shift_id, actual_start_time, actual_start_shift_id, planned_finish_time, sched_finish_time, sched_finish_shift_id, actual_finish_time, actual_finish_shift_id, costcode_id, project_id, dept_id, planned_labor_hours, sched_labor_hours, actual_labor_hours, labor_cost, material_cost, total_cost, planned_downtime_hours, actual_downtime_hours, modified_time, modified_id, created_time, created_id) VALUES
('10000', 'WO-001', 'Clean up office', 'Standard cleanup procedure.', '10000', NULL, NULL, NULL, 'wos_open', 'wop_p4', NULL, NULL, NULL, NULL, 'woo_request', NULL, NULL, '1002', '2007-09-28 12:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('10001', 'WO-002', 'Replace air filter', 'Vent cleanup before the replacement.', '10000', NULL, NULL, NULL, 'wos_open', 'wop_p4', NULL, NULL, NULL, NULL, 'woo_request', NULL, NULL, '1003', '2007-10-01 12:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('10002', 'WO-003', 'Software upgrade for security', 'Vent cleanup before the replacement.', '10006', NULL, NULL, NULL, 'wos_new', 'wop_p3', NULL, NULL, NULL, NULL, 'woo_request', NULL, NULL, '1003', '2007-10-02 12:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('10003', 'WO-004', 'Firmware upgrade', 'Frequent system reboot. Suspect firmware problem.', '10006', NULL, NULL, NULL, 'wos_complete', 'wop_p2', NULL, NULL, NULL, NULL, 'woo_request', NULL, NULL, '1002', '2007-09-02 12:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000'),
('10004', 'WO-005', 'Filter replacement', 'Vent cleanup before the replacement.', '10008', NULL, NULL, NULL, 'wos_accepted', 'wop_p2', NULL, NULL, NULL, NULL, 'woo_request', NULL, NULL, '1003', '2007-09-20 12:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 07:01:55', '1000000', '2018-06-25 07:01:55', '1000000');
INSERT INTO wo_semaphore (id, expiration, modified_time, modified_id, created_time, created_id) VALUES
('wo_generation', NULL, '2018-06-25 07:01:48', '1000000', '2018-06-25 07:01:48', '1000000');
INSERT INTO wo_seq (id) VALUES
(0);

insert into contract values('1', 'Kontrak sewa', '10000', 'Perjanjian sewa air compressor', '', '', '10000', '1000000', '2018-06-30', '2019-06-30', 'komentar', '2018-06-28 07:01:55', '1000000', '2018-06-28 07:01:55', '1000000');
insert into asset_contract values('1', '10008', '1', 'Perjanjian sewa air compressor', 'Valid', '2018-06-30', '2019-06-30', 'komentar', '2018-06-28 08:01:55', '1000000', '2018-06-28 08:01:55', '1000000');

ALTER TABLE asset ADD CONSTRAINT fk_asset_asset_loc_1 FOREIGN KEY (location_id) REFERENCES asset (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_asset_type_1 FOREIGN KEY (type_id) REFERENCES asset_type (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_costcode_1 FOREIGN KEY (costcode_id) REFERENCES costcode (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_dept_1 FOREIGN KEY (dept_id) REFERENCES dept (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_document_1 FOREIGN KEY (upload_id) REFERENCES doc_upload (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_manufacturer_1 FOREIGN KEY (manufacturer_id) REFERENCES manufacturer (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_rcm_template_1 FOREIGN KEY (template_id) REFERENCES rcm_template (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_uom_1 FOREIGN KEY (weight_uom_id) REFERENCES uom (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_user_3 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_users_1 FOREIGN KEY (owner_user_id) REFERENCES users (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_users_2 FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE asset ADD CONSTRAINT fk_asset_vendor_1 FOREIGN KEY (vendor_id) REFERENCES vendor (id);
ALTER TABLE asset_comment ADD CONSTRAINT fk_asset_comment_asset_1 FOREIGN KEY (asset_id) REFERENCES asset (id);
ALTER TABLE asset_comment ADD CONSTRAINT fk_asset_comment_user_1 FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE asset_comment ADD CONSTRAINT fk_asset_comment_user_2 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE asset_contract ADD CONSTRAINT fk_asset_contract_asset_1 FOREIGN KEY (asset_id) REFERENCES asset (id);
ALTER TABLE asset_contract ADD CONSTRAINT fk_asset_contract_contract_1 FOREIGN KEY (contract_id) REFERENCES contract (id);
ALTER TABLE asset_contract ADD CONSTRAINT fk_asset_modif FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE asset_contract ADD CONSTRAINT fk_asset_modif_1 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE asset_depreciation ADD CONSTRAINT fk_asset_create FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE asset_depreciation ADD CONSTRAINT fk_asset_depreciation_asset_1 FOREIGN KEY (asset_id) REFERENCES asset (id);
ALTER TABLE asset_depreciation ADD CONSTRAINT fk_asset_modified FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE asset_downtime ADD CONSTRAINT fk_asset_downtime_asset_1 FOREIGN KEY (asset_id) REFERENCES asset (id);
ALTER TABLE asset_downtime ADD CONSTRAINT fk_asset_downtime_wo_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE asset_downtime ADD CONSTRAINT fk1 FOREIGN KEY (reported_by_id) REFERENCES users (id);
ALTER TABLE asset_downtime ADD CONSTRAINT fk2 FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE asset_downtime ADD CONSTRAINT fk3 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE asset_meter ADD CONSTRAINT fk_asset_meter_asset_1 FOREIGN KEY (asset_id) REFERENCES asset (id);
ALTER TABLE asset_meter ADD CONSTRAINT fk_asset_meter_meter_type_1 FOREIGN KEY (type_id) REFERENCES meter_type (id);
ALTER TABLE asset_meter ADD CONSTRAINT fk_asset_meter_user_1 FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE asset_meter ADD CONSTRAINT fk_asset_meter_user_2 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE asset_meter ADD CONSTRAINT fk_asset_uom_4 FOREIGN KEY (reading_uom_id) REFERENCES uom (id);
ALTER TABLE asset_part ADD CONSTRAINT fk_asset_part_asset_1 FOREIGN KEY (asset_id) REFERENCES asset (id);
ALTER TABLE asset_part ADD CONSTRAINT fk_asset_part_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE asset_part ADD CONSTRAINT fk_asset_part_uom_1 FOREIGN KEY (uom_id) REFERENCES uom (id);
ALTER TABLE asset_part ADD CONSTRAINT fk_asset_part_user_1 FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE asset_part ADD CONSTRAINT fk_asset_part_user_2 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE asset_service_log ADD CONSTRAINT fk_asl_asset FOREIGN KEY (from_location_id) REFERENCES asset (id);
ALTER TABLE asset_service_log ADD CONSTRAINT fk_asl_asset_2 FOREIGN KEY (to_location_id) REFERENCES asset (id);
ALTER TABLE asset_service_log ADD CONSTRAINT fk_asl_user_1 FOREIGN KEY (from_owner_id) REFERENCES users (id);
ALTER TABLE asset_service_log ADD CONSTRAINT fk_asl_user_2 FOREIGN KEY (to_owner_id) REFERENCES users (id);
ALTER TABLE asset_service_log ADD CONSTRAINT fk_asl_user_3 FOREIGN KEY (changed_by_id) REFERENCES users (id);
ALTER TABLE asset_service_log ADD CONSTRAINT fk_asset_service_log_asset_1 FOREIGN KEY (asset_id) REFERENCES asset (id);
ALTER TABLE asset_type ADD CONSTRAINT fk_at_user FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE asset_type ADD CONSTRAINT fk_at_user_2 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE budget ADD CONSTRAINT fk_budget_budget_title_1 FOREIGN KEY (title_id) REFERENCES budget_title (id);
ALTER TABLE budget_status_log ADD CONSTRAINT fk_budget_status_log_budget_1 FOREIGN KEY (budget_id) REFERENCES budget (id);
ALTER TABLE contract ADD CONSTRAINT fk_contract_contact_1 FOREIGN KEY (contact_id) REFERENCES contact (id);
ALTER TABLE contract ADD CONSTRAINT fk_contract_user_1 FOREIGN KEY (owner_user_id) REFERENCES users (id);
ALTER TABLE contract ADD CONSTRAINT fk_contract_vendor_1 FOREIGN KEY (vendor_id) REFERENCES vendor (id);
ALTER TABLE contract_contact ADD CONSTRAINT fk_contract_contact_contact_1 FOREIGN KEY (contact_id) REFERENCES contact (id);
ALTER TABLE contract_contact ADD CONSTRAINT fk_contract_contact_contract_1 FOREIGN KEY (contract_id) REFERENCES contract (id);
ALTER TABLE contract_doc ADD CONSTRAINT fk_contract_doc_contract_1 FOREIGN KEY (contract_id) REFERENCES contract (id);
ALTER TABLE contract_doc ADD CONSTRAINT fk_contract_doc_document_1 FOREIGN KEY (doc_id) REFERENCES document (id);
ALTER TABLE costcode ADD CONSTRAINT fk_costcode_dept_1 FOREIGN KEY (dept_id) REFERENCES dept (id);
ALTER TABLE doc_attachment ADD CONSTRAINT fk_doc_attachment_doc_upload_2 FOREIGN KEY (upload_id) REFERENCES doc_upload (id);
ALTER TABLE doc_attachment ADD CONSTRAINT fk_doc_attachment_document_2 FOREIGN KEY (doc_id) REFERENCES document (id);
ALTER TABLE document ADD CONSTRAINT fk_document_doc_type_1 FOREIGN KEY (type_id) REFERENCES doc_type (id);
ALTER TABLE in_audit ADD CONSTRAINT fk_in_audit_user_1 FOREIGN KEY (audit_user_id) REFERENCES users (id);
ALTER TABLE in_audit ADD CONSTRAINT fk_in_audit_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE in_comment ADD CONSTRAINT fk_in_comment_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE in_doc ADD CONSTRAINT fk_in_doc_document_1 FOREIGN KEY (doc_id) REFERENCES document (id);
ALTER TABLE in_doc ADD CONSTRAINT fk_in_doc_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE in_reserved ADD CONSTRAINT fk_in_reserved_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE in_reserved ADD CONSTRAINT fk_in_reserved_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE in_stock ADD CONSTRAINT fk_in_stock_in_location_1 FOREIGN KEY (in_id) REFERENCES in_location (id);
ALTER TABLE in_stock ADD CONSTRAINT fk_in_stock_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE in_tran ADD CONSTRAINT fk_in_tran_costcode_1 FOREIGN KEY (costcode_id) REFERENCES costcode (id);
ALTER TABLE in_tran ADD CONSTRAINT fk_in_tran_in_location_1 FOREIGN KEY (location_id) REFERENCES in_location (id);
ALTER TABLE in_tran ADD CONSTRAINT fk_in_tran_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE in_tran ADD CONSTRAINT fk_in_tran_user_1 FOREIGN KEY (tran_user_id) REFERENCES users (id);
ALTER TABLE in_tran_worksheet ADD CONSTRAINT fk_in_tran_worksheet_in_tran_1 FOREIGN KEY (in_tran_id) REFERENCES in_tran (id);
ALTER TABLE in_vendor ADD CONSTRAINT fk_in_vendor_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE in_vendor ADD CONSTRAINT fk_in_vendor_uom_2 FOREIGN KEY (uom_id) REFERENCES uom (id);
ALTER TABLE in_vendor ADD CONSTRAINT fk_in_vendor_vendor_1 FOREIGN KEY (vendor_id) REFERENCES vendor (id);
ALTER TABLE ins_citation ADD CONSTRAINT fk_ins_citation_inspection_1 FOREIGN KEY (inspection_id) REFERENCES inspection (id);
ALTER TABLE inspection ADD CONSTRAINT fk_inspection_contact_1 FOREIGN KEY (inspect_contact_id) REFERENCES contact (id);
ALTER TABLE inspection ADD CONSTRAINT fk_inspection_users_1 FOREIGN KEY (inspect_user_id) REFERENCES users (id);
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_costcode_1 FOREIGN KEY (costcode_id) REFERENCES costcode (id);
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_in_type_1 FOREIGN KEY (type_id) REFERENCES in_type (id);
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_uom_2 FOREIGN KEY (uom_id) REFERENCES uom (id);
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_user_1 FOREIGN KEY (owner_user_id) REFERENCES users (id);
ALTER TABLE manufacturer ADD CONSTRAINT fk_manufacturer_contact_1 FOREIGN KEY (contact_id) REFERENCES contact (id);
ALTER TABLE manufacturer ADD CONSTRAINT fk_manufacturer_user_1 FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE manufacturer ADD CONSTRAINT fk_manufacturer_user_2 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE meter_transaction ADD CONSTRAINT fk_meter_transaction_asset_meter_1 FOREIGN KEY (meter_id) REFERENCES asset_meter (id);
ALTER TABLE meter_transaction ADD CONSTRAINT fk_meter_transaction_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE meter_transaction ADD CONSTRAINT fk_meter_user_1 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE meter_transaction ADD CONSTRAINT fk_meter_user_2 FOREIGN KEY (read_by_id) REFERENCES users (id);
ALTER TABLE meter_type ADD CONSTRAINT fk11 FOREIGN KEY (modified_id) REFERENCES users (id);
ALTER TABLE meter_type ADD CONSTRAINT fk12 FOREIGN KEY (created_id) REFERENCES users (id);
ALTER TABLE pm ADD CONSTRAINT fk_pm_asset_type_1 FOREIGN KEY (asset_type_id) REFERENCES asset_type (id);
ALTER TABLE pm ADD CONSTRAINT fk_pm_rcm_action_1 FOREIGN KEY (rcm_action_id) REFERENCES rcm_action (id);
ALTER TABLE pm ADD CONSTRAINT fk_pm_team_1 FOREIGN KEY (assigned_team_id) REFERENCES team (id);
ALTER TABLE pm ADD CONSTRAINT fk_pm_users_1 FOREIGN KEY (origin_user_id) REFERENCES users (id);
ALTER TABLE pm_asset ADD CONSTRAINT fk_pm_asset_asset_1 FOREIGN KEY (asset_id) REFERENCES asset (id);
ALTER TABLE pm_asset ADD CONSTRAINT fk_pm_asset_costcode_1 FOREIGN KEY (costcode_id) REFERENCES costcode (id);
ALTER TABLE pm_asset ADD CONSTRAINT fk_pm_asset_dept_1 FOREIGN KEY (dept_id) REFERENCES dept (id);
ALTER TABLE pm_asset ADD CONSTRAINT fk_pm_asset_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_audit ADD CONSTRAINT fk_pm_audit_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_audit ADD CONSTRAINT fk_pm_audit_user_1 FOREIGN KEY (audit_user_id) REFERENCES users (id);
ALTER TABLE pm_comment ADD CONSTRAINT fk_pm_comment_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_dependency ADD CONSTRAINT fk_pm_dependency_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_doc ADD CONSTRAINT fk_pm_doc_document_1 FOREIGN KEY (doc_id) REFERENCES document (id);
ALTER TABLE pm_doc ADD CONSTRAINT fk_pm_doc_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_downtime ADD CONSTRAINT fk_pm_downtime_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_labor ADD CONSTRAINT fk_pm_labor_craft_1 FOREIGN KEY (craft_id) REFERENCES craft (id);
ALTER TABLE pm_labor ADD CONSTRAINT fk_pm_labor_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_meter ADD CONSTRAINT fk_pm_meter_asset FOREIGN KEY (meter_id) REFERENCES asset_meter (id);
ALTER TABLE pm_meter ADD CONSTRAINT fk_pm_meter_pm_asset_1 FOREIGN KEY (pm_asset_id) REFERENCES pm_asset (id);
ALTER TABLE pm_part ADD CONSTRAINT fk_pm_part_inventory FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE pm_part ADD CONSTRAINT fk_pm_part_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_safety ADD CONSTRAINT fk_pm_safety_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_season ADD CONSTRAINT fk_pm_season_pm_asset_1 FOREIGN KEY (pm_asset_id) REFERENCES pm_asset (id);
ALTER TABLE pm_step ADD CONSTRAINT fk_pm_step_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE pm_tool ADD CONSTRAINT fk_pm_tool_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE pm_tool ADD CONSTRAINT fk_pm_tool_pm_1 FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE po ADD CONSTRAINT fk_po_user_1 FOREIGN KEY (buyer_id) REFERENCES users (id);
ALTER TABLE po ADD CONSTRAINT fk_po_user_2 FOREIGN KEY (next_user_id) REFERENCES users (id);
ALTER TABLE po ADD CONSTRAINT fk_po_vendor_1 FOREIGN KEY (vendor_id) REFERENCES vendor (id);
ALTER TABLE po_item ADD CONSTRAINT fk_po_item_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE po_item ADD CONSTRAINT fk_po_item_po_1 FOREIGN KEY (po_id) REFERENCES po (id);
ALTER TABLE po_item ADD CONSTRAINT fk_po_item_uom_2 FOREIGN KEY (uom_id) REFERENCES uom (id);
ALTER TABLE po_status_log ADD CONSTRAINT fk_po_status_log_po_1 FOREIGN KEY (po_id) REFERENCES po (id);
ALTER TABLE po_status_log ADD CONSTRAINT fk_po_status_log_users_1 FOREIGN KEY (changed_by_id) REFERENCES users (id);
ALTER TABLE project ADD CONSTRAINT fk_project_costcode_1 FOREIGN KEY (costcode_id) REFERENCES costcode (id);
ALTER TABLE project ADD CONSTRAINT fk_project_dept_1 FOREIGN KEY (dept_id) REFERENCES dept (id);
ALTER TABLE project ADD CONSTRAINT fk_project_project_type_1 FOREIGN KEY (type_id) REFERENCES project_type (id);
ALTER TABLE project ADD CONSTRAINT fk_project_users_2 FOREIGN KEY (owner_user_id) REFERENCES users (id);
ALTER TABLE rcm_action ADD CONSTRAINT fk_rcm_action_rcm_failure_1 FOREIGN KEY (failure_id) REFERENCES rcm_failure (id);
ALTER TABLE rcm_action_part ADD CONSTRAINT fk_rcm_action_part_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE rcm_action_part ADD CONSTRAINT fk_rcm_action_part_rcm_action_1 FOREIGN KEY (action_id) REFERENCES rcm_action (id);
ALTER TABLE rcm_consequence ADD CONSTRAINT fk_rcm_consequence_rcm_failure_1 FOREIGN KEY (failure_id) REFERENCES rcm_failure (id);
ALTER TABLE rcm_failure ADD CONSTRAINT fk_rcm_failure_rcm_function_1 FOREIGN KEY (function_id) REFERENCES rcm_function (id);
ALTER TABLE rcm_failure ADD CONSTRAINT fk_rcm_failure_rcm_template_1 FOREIGN KEY (template_id) REFERENCES rcm_template (id);
ALTER TABLE rcm_function ADD CONSTRAINT fk_rcm_function_rcm_template_1 FOREIGN KEY (template_id) REFERENCES rcm_template (id);
ALTER TABLE req_item ADD CONSTRAINT fk_req_item_inventory_1 FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE req_item ADD CONSTRAINT fk_req_item_po_1 FOREIGN KEY (po_id) REFERENCES po (id);
ALTER TABLE req_item ADD CONSTRAINT fk_req_item_requisition_1 FOREIGN KEY (req_id) REFERENCES requisition (id);
ALTER TABLE req_item ADD CONSTRAINT fk_req_item_uom_1 FOREIGN KEY (uom_id) REFERENCES uom (id);
ALTER TABLE req_item ADD CONSTRAINT fk_req_item_vendor_1 FOREIGN KEY (vendor_id) REFERENCES vendor (id);
ALTER TABLE req_status_log ADD CONSTRAINT fk_changed_by FOREIGN KEY (changed_by_id) REFERENCES users (id);
ALTER TABLE req_status_log ADD CONSTRAINT fk_req_status_log_requisition_1 FOREIGN KEY (req_id) REFERENCES requisition (id);
ALTER TABLE requisition ADD CONSTRAINT fk_requisition_costcode_2 FOREIGN KEY (costcode_id) REFERENCES costcode (id);
ALTER TABLE requisition ADD CONSTRAINT fk_requisition_dept_2 FOREIGN KEY (dept_id) REFERENCES dept (id);
ALTER TABLE requisition ADD CONSTRAINT fk_requisition_users_1 FOREIGN KEY (request_user_id) REFERENCES users (id);
ALTER TABLE requisition ADD CONSTRAINT fk_requisition_users_2 FOREIGN KEY (next_user_id) REFERENCES users (id);
ALTER TABLE requisition ADD CONSTRAINT fk_requisition_wo_2 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE sched_user ADD CONSTRAINT fk_sched_user_users_2 FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE scheduler_job ADD CONSTRAINT fk_scheduler_job_scheduler_task_1 FOREIGN KEY (task_id) REFERENCES scheduler_task (id);
ALTER TABLE scheduler_job_log ADD CONSTRAINT fk_scheduler_job_log_scheduler_job_1 FOREIGN KEY (job_id) REFERENCES scheduler_job (id);
ALTER TABLE scheduler_job_log ADD CONSTRAINT fk_scheduler_job_log_scheduler_job_2 FOREIGN KEY (job_id) REFERENCES scheduler_job (id);
ALTER TABLE tax_rate ADD CONSTRAINT fk_tax_rate_tax_code_1 FOREIGN KEY (tax_code_id) REFERENCES tax_code (id);
ALTER TABLE training ADD CONSTRAINT fk_training_contact_2 FOREIGN KEY (instructor_contact_id) REFERENCES contact (id);
ALTER TABLE training ADD CONSTRAINT fk_training_training_certificate_1 FOREIGN KEY (certificate_id) REFERENCES training_certificate (id);
ALTER TABLE training ADD CONSTRAINT fk_training_training_course_1 FOREIGN KEY (course_id) REFERENCES training_course (id);
ALTER TABLE training ADD CONSTRAINT fk_training_users_1 FOREIGN KEY (instructor_user_id) REFERENCES users (id);
ALTER TABLE training_course ADD CONSTRAINT fk_training_course_training_course_type_1 FOREIGN KEY (type_id) REFERENCES training_course_type (id);
ALTER TABLE training_user ADD CONSTRAINT fk_training_user_training_1 FOREIGN KEY (training_id) REFERENCES training (id);
ALTER TABLE training_user ADD CONSTRAINT fk_training_user_users_1 FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE uom_map ADD CONSTRAINT fk_uom_map_uom_1 FOREIGN KEY (uom_src_id) REFERENCES uom (id);
ALTER TABLE uom_map ADD CONSTRAINT fk_uom_map_uom_2 FOREIGN KEY (uom_dst_id) REFERENCES uom (id);
ALTER TABLE users ADD CONSTRAINT fk_users_acl FOREIGN KEY (acl_group_id) REFERENCES acl_group (id);
ALTER TABLE users ADD CONSTRAINT fk_users_costcode FOREIGN KEY (costcode_id) REFERENCES costcode (id);
ALTER TABLE users ADD CONSTRAINT fk_users_craft FOREIGN KEY (craft_id) REFERENCES craft (id);
ALTER TABLE users ADD CONSTRAINT fk_users_dept_2 FOREIGN KEY (dept_id) REFERENCES dept (id);
ALTER TABLE users ADD CONSTRAINT fk_users_team FOREIGN KEY (team_id) REFERENCES team (id);
ALTER TABLE vendor ADD CONSTRAINT fk_vendor_contact FOREIGN KEY (contact_id) REFERENCES contact (id);
ALTER TABLE vendor ADD CONSTRAINT fk_vendor_task FOREIGN KEY (tax_code_id) REFERENCES tax_code (id);
ALTER TABLE vendor ADD CONSTRAINT fk_vendor_user FOREIGN KEY (owner_user_id) REFERENCES users (id);
ALTER TABLE vendor_contact ADD CONSTRAINT fk_vc_contact FOREIGN KEY (contact_id) REFERENCES contact (id);
ALTER TABLE vendor_contact ADD CONSTRAINT fk_vendor_contact_vendor_1 FOREIGN KEY (vendor_id) REFERENCES vendor (id);
ALTER TABLE wo_attachment ADD CONSTRAINT fk_wo_attachment_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_comment ADD CONSTRAINT fk_wo_comment_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_doc ADD CONSTRAINT fk_wo_doc_document FOREIGN KEY (doc_id) REFERENCES document (id);
ALTER TABLE wo_doc ADD CONSTRAINT fk_wo_doc_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_labor ADD CONSTRAINT fk_wo_labor_craft FOREIGN KEY (craft_id) REFERENCES craft (id);
ALTER TABLE wo_labor ADD CONSTRAINT fk_wo_labor_user FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE wo_labor ADD CONSTRAINT fk_wo_labor_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_meter ADD CONSTRAINT fk_wo_meter_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_part ADD CONSTRAINT fk_wo_part_inventory FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE wo_part ADD CONSTRAINT fk_wo_part_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_planned_downtime ADD CONSTRAINT fk_wo_planned_downtime_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_planned_labor ADD CONSTRAINT fk_wo_planned_labor_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_planned_labor ADD CONSTRAINT fk_wopl_craft FOREIGN KEY (craft_id) REFERENCES craft (id);
ALTER TABLE wo_planned_part ADD CONSTRAINT fk_wo_planned_part_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_planned_part ADD CONSTRAINT fk_wopp_inventory FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE wo_planned_tool ADD CONSTRAINT fk_wo_planned_tool_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_safety ADD CONSTRAINT fk_wo_safety_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_sched_labor ADD CONSTRAINT fk_wo_sched_labor_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_sched_labor ADD CONSTRAINT fk_wosl_user FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE wo_status_log ADD CONSTRAINT fk_wo_status_log_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_status_log ADD CONSTRAINT fk_wosl_user_2 FOREIGN KEY (changed_by_id) REFERENCES users (id);
ALTER TABLE wo_step ADD CONSTRAINT fk_wo_step_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE wo_tool ADD CONSTRAINT fk_wo_tool_inv FOREIGN KEY (in_id) REFERENCES inventory (id);
ALTER TABLE wo_tool ADD CONSTRAINT fk_wo_tool_workorder_1 FOREIGN KEY (wo_id) REFERENCES workorder (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_at FOREIGN KEY (assigned_team_id) REFERENCES team (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_costcode FOREIGN KEY (costcode_id) REFERENCES costcode (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_dept FOREIGN KEY (dept_id) REFERENCES dept (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_oc FOREIGN KEY (orig_contact_id) REFERENCES contact (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_ou_1 FOREIGN KEY (orig_user_id) REFERENCES users (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_ou_2 FOREIGN KEY (assigned_to_id) REFERENCES users (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_ou_3 FOREIGN KEY (assigned_by_id) REFERENCES users (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_pm FOREIGN KEY (pm_id) REFERENCES pm (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_project FOREIGN KEY (project_id) REFERENCES project (id);
ALTER TABLE workorder ADD CONSTRAINT fk_wo_rcm_action FOREIGN KEY (rcm_action_id) REFERENCES rcm_action (id);
ALTER TABLE workorder ADD CONSTRAINT fk_workorder_asset_1 FOREIGN KEY (asset_id) REFERENCES asset (id);
ALTER TABLE workorder ADD CONSTRAINT fk_workorder_team_1 FOREIGN KEY (assigned_team_id) REFERENCES team (id);