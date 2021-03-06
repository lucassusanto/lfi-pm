toc.dat                                                                                             0000600 0004000 0002000 00000661275 13337314274 0014467 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           	                 v            coba2    10.5    10.5 3              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                    1262    26350    coba2    DATABASE     �   CREATE DATABASE coba2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE coba2;
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                    0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                     3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                    0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1259    26351 	   acl_group    TABLE     c  CREATE TABLE public.acl_group (
    id character varying(36) NOT NULL,
    acl_group character varying(30),
    parent_group_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.acl_group;
       public         postgres    false    3         �            1259    26356    asset    TABLE     �  CREATE TABLE public.asset (
    id character varying(36) NOT NULL,
    asset_no character varying(30),
    note character varying(76),
    priority_id character varying(36),
    status_id character varying(36),
    parent_id character varying(36),
    type_id character varying(36),
    template_id character varying(36),
    category_id character varying(36),
    location_id character varying(36),
    weight double precision,
    weight_uom_id character varying(36),
    serial_no character varying(30),
    owner_user_id character varying(36),
    start_date date,
    purchase_date date,
    original_cost double precision,
    manufacturer_id character varying(36),
    vendor_id character varying(36),
    upload_id character varying(36),
    warranty_start_date date,
    warranty_end_date date,
    maint_labor_hours double precision,
    maint_labor_cost double precision,
    maint_material_cost double precision,
    maint_cost double precision,
    rollup_cost smallint,
    costcode_id character varying(36),
    dept_id character varying(36),
    in_id character varying(36),
    depreciation_type_id character varying(36),
    depreciation_start date,
    depreciation_time_id character varying(36),
    depreciation_rate double precision,
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.asset;
       public         postgres    false    3         �            1259    26364    asset_comment    TABLE     -  CREATE TABLE public.asset_comment (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 !   DROP TABLE public.asset_comment;
       public         postgres    false    3         �            1259    26372    asset_contract    TABLE     �  CREATE TABLE public.asset_contract (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    contract_id character varying(36),
    note character varying(76),
    status_id character varying(36),
    start_date date,
    end_date date,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 "   DROP TABLE public.asset_contract;
       public         postgres    false    3         �            1259    26380    asset_depreciation    TABLE     �  CREATE TABLE public.asset_depreciation (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    start_date date,
    end_date date,
    depreciation_rate double precision,
    start_value double precision,
    end_value double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 &   DROP TABLE public.asset_depreciation;
       public         postgres    false    3         �            1259    26385    asset_downtime    TABLE     �  CREATE TABLE public.asset_downtime (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    downtime_type_id character varying(36),
    downtime_cause_id character varying(36),
    start_time timestamp without time zone,
    shift_id character varying(36),
    end_time timestamp without time zone,
    hours double precision,
    wo_id character varying(36),
    reported_by_id character varying(36),
    reported_time timestamp without time zone,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 "   DROP TABLE public.asset_downtime;
       public         postgres    false    3         �            1259    26390    asset_meter    TABLE     {  CREATE TABLE public.asset_meter (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    meter_no character varying(30),
    type_id character varying(36),
    reading_uom_id character varying(36),
    reading double precision,
    is_rollover smallint,
    time_taken timestamp without time zone,
    rollup_type_id character varying(36),
    rollover_reading double precision,
    rollover_count integer,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.asset_meter;
       public         postgres    false    3         �            1259    26395 
   asset_part    TABLE     �  CREATE TABLE public.asset_part (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    in_id character varying(36),
    type_id character varying(36),
    qty double precision,
    uom_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.asset_part;
       public         postgres    false    3         �            1259    26400 	   asset_seq    TABLE     2   CREATE TABLE public.asset_seq (
    id integer
);
    DROP TABLE public.asset_seq;
       public         postgres    false    3         �            1259    26403    asset_service_log    TABLE     (  CREATE TABLE public.asset_service_log (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    from_status_id character varying(36),
    to_status_id character varying(36),
    from_location_id character varying(36),
    to_location_id character varying(36),
    from_parent_id character varying(36),
    to_parent_id character varying(36),
    from_owner_id character varying(36),
    to_owner_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);
 %   DROP TABLE public.asset_service_log;
       public         postgres    false    3         �            1259    26411 
   asset_type    TABLE     4  CREATE TABLE public.asset_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.asset_type;
       public         postgres    false    3         �            1259    26416    budget    TABLE     �  CREATE TABLE public.budget (
    id character varying(36) NOT NULL,
    title_id character varying(36),
    budget character varying(30),
    state_id character varying(36),
    start_date date,
    end_date date,
    budgeted double precision,
    app double precision,
    accounting double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.budget;
       public         postgres    false    3         �            1259    26421    budget_status_log    TABLE     /  CREATE TABLE public.budget_status_log (
    id character varying(36) NOT NULL,
    budget_id character varying(36),
    to_state_id character varying(36),
    from_state_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);
 %   DROP TABLE public.budget_status_log;
       public         postgres    false    3         �            1259    26429    budget_title    TABLE     _  CREATE TABLE public.budget_title (
    id character varying(36) NOT NULL,
    title character varying(30),
    start_date date,
    end_date date,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
     DROP TABLE public.budget_title;
       public         postgres    false    3         �            1259    26434    contact    TABLE        CREATE TABLE public.contact (
    id character varying(36) NOT NULL,
    full_name character varying(50),
    job_title character varying(30),
    type_id character varying(36),
    note character varying(76),
    phone_work character varying(24),
    phone_home character varying(16),
    phone_mobile character varying(16),
    email_work character varying(50),
    email_other character varying(50),
    im1_type_id character varying(36),
    im1_id character varying(30),
    im2_type_id character varying(36),
    im2_id character varying(30),
    fax character varying(16),
    company character varying(50),
    street1 character varying(50),
    street2 character varying(50),
    city character varying(50),
    state character varying(50),
    zip character varying(16),
    country character varying(50),
    asset_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.contact;
       public         postgres    false    3         �            1259    26442    contract    TABLE     ,  CREATE TABLE public.contract (
    id character varying(36) NOT NULL,
    contract character varying(30),
    vendor_id character varying(36),
    note character varying(76),
    type_id character varying(36),
    status_id character varying(36),
    contact_id character varying(36),
    owner_user_id character varying(36),
    start_date date,
    end_date date,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.contract;
       public         postgres    false    3         �            1259    26450    contract_contact    TABLE     g  CREATE TABLE public.contract_contact (
    id character varying(36) NOT NULL,
    contract_id character varying(36),
    contact_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 $   DROP TABLE public.contract_contact;
       public         postgres    false    3         �            1259    26455    contract_doc    TABLE     p  CREATE TABLE public.contract_doc (
    id character varying(36) NOT NULL,
    contract_id character varying(36),
    seq integer,
    doc_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
     DROP TABLE public.contract_doc;
       public         postgres    false    3         �            1259    26460    costcode    TABLE     �  CREATE TABLE public.costcode (
    id character varying(36) NOT NULL,
    costcode character varying(30),
    note character varying(76),
    dept_id character varying(36),
    parent_id character varying(36),
    rollup_cost smallint,
    cost_type_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.costcode;
       public         postgres    false    3         �            1259    26465    craft    TABLE     k  CREATE TABLE public.craft (
    id character varying(36) NOT NULL,
    craft character varying(30),
    note character varying(76),
    rate double precision,
    ot_factor double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.craft;
       public         postgres    false    3         �            1259    26470    dash_wo_orig_day    TABLE     �   CREATE TABLE public.dash_wo_orig_day (
    id character varying(36) NOT NULL,
    counts character varying(1000),
    modified_time timestamp without time zone
);
 $   DROP TABLE public.dash_wo_orig_day;
       public         postgres    false    3         �            1259    26478    dash_wo_orig_md    TABLE     �   CREATE TABLE public.dash_wo_orig_md (
    id character varying(36) NOT NULL,
    counts character varying(1000),
    modified_time timestamp without time zone
);
 #   DROP TABLE public.dash_wo_orig_md;
       public         postgres    false    3         �            1259    26486    dept    TABLE     T  CREATE TABLE public.dept (
    id character varying(36) NOT NULL,
    dept character varying(30),
    note character varying(76),
    manager_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.dept;
       public         postgres    false    3         �            1259    26499    doc_attachment    TABLE     _  CREATE TABLE public.doc_attachment (
    id character varying(36) NOT NULL,
    doc_id character varying(36),
    upload_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 "   DROP TABLE public.doc_attachment;
       public         postgres    false    3         �            1259    26504    doc_type    TABLE     2  CREATE TABLE public.doc_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.doc_type;
       public         postgres    false    3         �            1259    26509 
   doc_upload    TABLE     a  CREATE TABLE public.doc_upload (
    id character varying(36) NOT NULL,
    file_upload character varying(250),
    access_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.doc_upload;
       public         postgres    false    3         �            1259    26491    document    TABLE     k  CREATE TABLE public.document (
    id character varying(36) NOT NULL,
    document character varying(30),
    content text,
    type_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.document;
       public         postgres    false    3         �            1259    26514    downtime_unit_cost    TABLE     �  CREATE TABLE public.downtime_unit_cost (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    downtime_type_id character varying(36),
    hourly_rate double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 &   DROP TABLE public.downtime_unit_cost;
       public         postgres    false    3         �            1259    26543    in_audit    TABLE     �  CREATE TABLE public.in_audit (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    audit_user_id character varying(36),
    start_date date,
    end_date date,
    hours double precision,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.in_audit;
       public         postgres    false    3         �            1259    26551 
   in_comment    TABLE     '  CREATE TABLE public.in_comment (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.in_comment;
       public         postgres    false    3         �            1259    26559    in_doc    TABLE     S  CREATE TABLE public.in_doc (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    doc_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.in_doc;
       public         postgres    false    3         �            1259    26564    in_location    TABLE     ^  CREATE TABLE public.in_location (
    id character varying(36) NOT NULL,
    location character varying(30),
    parent_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.in_location;
       public         postgres    false    3         �            1259    26569    in_reserved    TABLE     Q  CREATE TABLE public.in_reserved (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    wo_id character varying(36),
    qty double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.in_reserved;
       public         postgres    false    3         �            1259    26574    in_seq    TABLE     /   CREATE TABLE public.in_seq (
    id integer
);
    DROP TABLE public.in_seq;
       public         postgres    false    3         �            1259    26577    in_stock    TABLE     T  CREATE TABLE public.in_stock (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    location_id character varying(36),
    qty double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.in_stock;
       public         postgres    false    3         �            1259    26582    in_tran    TABLE     �  CREATE TABLE public.in_tran (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    type_id character varying(36),
    location_id character varying(36),
    qty double precision,
    unit_cost double precision,
    costcode_id character varying(36),
    checkout_type_id character varying(36),
    checkout_to_id character varying(36),
    receive_type_id character varying(36),
    receive_from_id character varying(36),
    qty_available double precision,
    qty_orig double precision,
    orig_loc_id character varying(36),
    checkout_tran_id character varying(36),
    rent_duration double precision,
    rent_rate double precision,
    tran_total double precision,
    note character varying(76),
    tran_time timestamp without time zone,
    tran_user_id character varying(36),
    store_user_id character varying(36),
    voided smallint,
    authorized_by_id character varying(36),
    void_by_id character varying(36),
    void_time timestamp without time zone,
    void_note character varying(76),
    new_tran_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.in_tran;
       public         postgres    false    3         �            1259    26590    in_tran_worksheet    TABLE     �  CREATE TABLE public.in_tran_worksheet (
    id character varying(36) NOT NULL,
    in_tran_id character varying(36),
    src_tran_id character varying(36),
    qty double precision,
    unit_cost double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 %   DROP TABLE public.in_tran_worksheet;
       public         postgres    false    3         �            1259    26595    in_type    TABLE     1  CREATE TABLE public.in_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.in_type;
       public         postgres    false    3         �            1259    26600 	   in_vendor    TABLE       CREATE TABLE public.in_vendor (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    vendor_id character varying(36),
    vendor_part_no character varying(30),
    is_primary smallint,
    uom_id character varying(36),
    unit_cost double precision,
    lead_time_days double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.in_vendor;
       public         postgres    false    3         �            1259    26527    ins_citation    TABLE     |  CREATE TABLE public.ins_citation (
    id character varying(36) NOT NULL,
    citation character varying(50),
    inspection_id character varying(36),
    severity_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
     DROP TABLE public.ins_citation;
       public         postgres    false    3         �            1259    26519 
   inspection    TABLE     '  CREATE TABLE public.inspection (
    id character varying(36) NOT NULL,
    inspection character varying(50),
    type_id character varying(36),
    inspect_contact_id character varying(36),
    inspect_user_id character varying(36),
    owner_user_id character varying(36),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.inspection;
       public         postgres    false    3         �            1259    26535 	   inventory    TABLE     �  CREATE TABLE public.inventory (
    id character varying(36) NOT NULL,
    in_no character varying(30),
    note character varying(76),
    type_id character varying(36),
    category_id character varying(36),
    stock_type_id character varying(36),
    valuation_type_id character varying(36),
    abc_id character varying(36),
    abc_time timestamp without time zone,
    uom_id character varying(36),
    avg_unit_cost double precision,
    rent_uom_id character varying(36),
    rent_rate double precision,
    qty_in_stock double precision,
    qty_on_order double precision,
    qty_reserved double precision,
    qty_to_order double precision,
    order_gen_id character varying(36),
    order_type_id character varying(36),
    min_level double precision,
    max_level double precision,
    reorder_point double precision,
    reorder_qty double precision,
    owner_user_id character varying(36),
    notification_id character varying(36),
    costcode_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.inventory;
       public         postgres    false    3         �            1259    26605    manufacturer    TABLE     d  CREATE TABLE public.manufacturer (
    id character varying(36) NOT NULL,
    manufacturer character varying(30),
    note character varying(76),
    contact_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
     DROP TABLE public.manufacturer;
       public         postgres    false    3         �            1259    26610    meter_transaction    TABLE     �  CREATE TABLE public.meter_transaction (
    id character varying(36) NOT NULL,
    meter_id character varying(36),
    read_by_id character varying(36),
    time_taken timestamp without time zone,
    reading double precision,
    is_rollover smallint,
    wo_id character varying(36),
    note character varying(76),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 %   DROP TABLE public.meter_transaction;
       public         postgres    false    3         �            1259    26615 
   meter_type    TABLE     4  CREATE TABLE public.meter_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.meter_type;
       public         postgres    false    3         �            1259    26620    pm    TABLE     ~  CREATE TABLE public.pm (
    id character varying(36) NOT NULL,
    pm_no character varying(30),
    description text,
    status_id character varying(36),
    asset_type_id character varying(36),
    rcm_action_id character varying(36),
    category_id character varying(36),
    priority_id character varying(36),
    origin_id character varying(36),
    origin_user_id character varying(36),
    assigned_to_id character varying(36),
    assigned_team_id character varying(36),
    duration_hours double precision,
    release_type_id character varying(36),
    schedule_type_id character varying(36),
    release_schedule character varying(1024),
    labor_hours double precision,
    downtime_hours double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm;
       public         postgres    false    3         �            1259    26628    pm_asset    TABLE     �  CREATE TABLE public.pm_asset (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    asset_id character varying(36),
    last_released date,
    last_closed date,
    next_due_date date,
    release_count integer,
    costcode_id character varying(36),
    dept_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_asset;
       public         postgres    false    3         �            1259    26633    pm_audit    TABLE     �  CREATE TABLE public.pm_audit (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    audit_user_id character varying(36),
    start_date date,
    end_date date,
    hours double precision,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_audit;
       public         postgres    false    3         �            1259    26642 
   pm_comment    TABLE     '  CREATE TABLE public.pm_comment (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_comment;
       public         postgres    false    3         �            1259    26650    pm_dependency    TABLE     �  CREATE TABLE public.pm_dependency (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    child_pm_id character varying(36),
    type_id character varying(36),
    scope_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 !   DROP TABLE public.pm_dependency;
       public         postgres    false    3         �            1259    26655    pm_doc    TABLE     d  CREATE TABLE public.pm_doc (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    seq integer,
    doc_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_doc;
       public         postgres    false    3         �            1259    26660    pm_downtime    TABLE     R  CREATE TABLE public.pm_downtime (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    hours double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_downtime;
       public         postgres    false    3         �            1259    26665    pm_labor    TABLE     �  CREATE TABLE public.pm_labor (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    craft_id character varying(36),
    hours double precision,
    crew_size integer,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_labor;
       public         postgres    false    3         �            1259    26670    pm_meter    TABLE     �  CREATE TABLE public.pm_meter (
    id character varying(36) NOT NULL,
    pm_asset_id character varying(36),
    meter_id character varying(36),
    release_by_meter smallint,
    reading_released double precision,
    rollover_count integer,
    reading_interval double precision,
    copy_to_wo smallint,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_meter;
       public         postgres    false    3         �            1259    26675    pm_part    TABLE     m  CREATE TABLE public.pm_part (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_part;
       public         postgres    false    3         �            1259    26680 	   pm_safety    TABLE     ;  CREATE TABLE public.pm_safety (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    seq integer,
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_safety;
       public         postgres    false    3         �            1259    26688 	   pm_season    TABLE     b  CREATE TABLE public.pm_season (
    id character varying(36) NOT NULL,
    pm_asset_id character varying(36),
    start_date date,
    end_date date,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_season;
       public         postgres    false    3         �            1259    26693    pm_step    TABLE     9  CREATE TABLE public.pm_step (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    seq integer,
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_step;
       public         postgres    false    3         �            1259    26701    pm_tool    TABLE     m  CREATE TABLE public.pm_tool (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.pm_tool;
       public         postgres    false    3         �            1259    26706    po    TABLE     I  CREATE TABLE public.po (
    id character varying(36) NOT NULL,
    po_no character varying(30),
    status_id character varying(36),
    state_id character varying(36),
    buyer_id character varying(36),
    buyer_name character varying(50),
    buyer_phone character varying(24),
    po_date date,
    next_user_id character varying(36),
    next_note character varying(76),
    vendor_id character varying(36),
    vendor_addr character varying(512),
    vendor_contact_id character varying(36),
    vendor_contact_phone character varying(24),
    payment_term_id character varying(36),
    shipping_type_id character varying(36),
    shipping_term_id character varying(36),
    shipping_addr_id character varying(36),
    billing_addr_id character varying(36),
    po_item_total double precision,
    tax_rate_total double precision,
    tax_charge double precision,
    total_charge double precision,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.po;
       public         postgres    false    3                     1259    26714 
   po_address    TABLE     [  CREATE TABLE public.po_address (
    id character varying(36) NOT NULL,
    address character varying(512),
    type_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.po_address;
       public         postgres    false    3                    1259    26722    po_item    TABLE     D  CREATE TABLE public.po_item (
    id character varying(36) NOT NULL,
    line_no integer,
    po_id character varying(36),
    in_id character varying(36),
    vendor_part_no character varying(50),
    note character varying(76),
    unit_cost double precision,
    qty double precision,
    qty_received double precision,
    uom_id character varying(36),
    due_date date,
    line_cost double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.po_item;
       public         postgres    false    3                    1259    26727    po_seq    TABLE     /   CREATE TABLE public.po_seq (
    id integer
);
    DROP TABLE public.po_seq;
       public         postgres    false    3                    1259    26730    po_status_log    TABLE     y  CREATE TABLE public.po_status_log (
    id character varying(36) NOT NULL,
    po_id character varying(36),
    from_status_id character varying(36),
    to_status_id character varying(36),
    from_state_id character varying(36),
    to_state_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);
 !   DROP TABLE public.po_status_log;
       public         postgres    false    3                    1259    26738    project    TABLE     ~  CREATE TABLE public.project (
    id character varying(36) NOT NULL,
    project_no character varying(30),
    parent_id character varying(36),
    note character varying(76),
    status_id character varying(36),
    priority_id character varying(36),
    type_id character varying(36),
    owner_user_id character varying(36),
    sched_start_time timestamp without time zone,
    sched_end_time timestamp without time zone,
    actual_start_time timestamp without time zone,
    actual_end_time timestamp without time zone,
    sched_hours double precision,
    actual_hours double precision,
    percent_done double precision,
    dept_id character varying(36),
    costcode_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.project;
       public         postgres    false    3                    1259    26746    project_type    TABLE     6  CREATE TABLE public.project_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
     DROP TABLE public.project_type;
       public         postgres    false    3                    1259    26751 
   rcm_action    TABLE     �  CREATE TABLE public.rcm_action (
    id character varying(36) NOT NULL,
    failure_id character varying(36),
    cause character varying(50),
    action character varying(50),
    cause_type_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.rcm_action;
       public         postgres    false    3                    1259    26759    rcm_action_part    TABLE     y  CREATE TABLE public.rcm_action_part (
    id character varying(36) NOT NULL,
    action_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 #   DROP TABLE public.rcm_action_part;
       public         postgres    false    3                    1259    26764    rcm_consequence    TABLE     �  CREATE TABLE public.rcm_consequence (
    id character varying(36) NOT NULL,
    failure_id character varying(36),
    consequence character varying(50),
    type_id character varying(36),
    pm_policy_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 #   DROP TABLE public.rcm_consequence;
       public         postgres    false    3         	           1259    26772    rcm_failure    TABLE     �  CREATE TABLE public.rcm_failure (
    id character varying(36) NOT NULL,
    failure character varying(50),
    is_evident smallint,
    function_id character varying(36),
    template_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.rcm_failure;
       public         postgres    false    3         
           1259    26780    rcm_function    TABLE     V  CREATE TABLE public.rcm_function (
    id character varying(36) NOT NULL,
    fn_name character varying(50),
    template_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
     DROP TABLE public.rcm_function;
       public         postgres    false    3                    1259    26788    rcm_template    TABLE     :  CREATE TABLE public.rcm_template (
    id character varying(36) NOT NULL,
    template character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
     DROP TABLE public.rcm_template;
       public         postgres    false    3                    1259    26793    recycle_bin    TABLE     L  CREATE TABLE public.recycle_bin (
    id character varying(36) NOT NULL,
    parent_id character varying(36),
    description character varying(256),
    table_name character varying(30),
    rec_id character varying(36),
    value_deleted text,
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.recycle_bin;
       public         postgres    false    3                    1259    26809    req_item    TABLE     A  CREATE TABLE public.req_item (
    id character varying(36) NOT NULL,
    req_id character varying(36),
    in_id character varying(36),
    vendor_id character varying(36),
    vendor_part_no character varying(50),
    unit_cost double precision,
    qty double precision,
    uom_id character varying(36),
    line_cost double precision,
    po_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.req_item;
       public         postgres    false    3                    1259    26814    req_seq    TABLE     0   CREATE TABLE public.req_seq (
    id integer
);
    DROP TABLE public.req_seq;
       public         postgres    false    3                    1259    26817    req_status_log    TABLE     {  CREATE TABLE public.req_status_log (
    id character varying(36) NOT NULL,
    req_id character varying(36),
    from_status_id character varying(36),
    to_status_id character varying(36),
    from_state_id character varying(36),
    to_state_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);
 "   DROP TABLE public.req_status_log;
       public         postgres    false    3                    1259    26801    requisition    TABLE     Z  CREATE TABLE public.requisition (
    id character varying(36) NOT NULL,
    req_no character varying(30),
    description text,
    priority_id character varying(36),
    status_id character varying(36),
    req_on_po_id character varying(36),
    source_id character varying(36),
    state_id character varying(36),
    due_date date,
    shipping_type_id character varying(36),
    wo_id character varying(36),
    request_user_id character varying(36),
    request_time timestamp without time zone,
    req_total double precision,
    costcode_id character varying(36),
    dept_id character varying(36),
    next_user_id character varying(36),
    next_note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.requisition;
       public         postgres    false    3                    1259    26847    sched_shutdown    TABLE     �  CREATE TABLE public.sched_shutdown (
    id character varying(36) NOT NULL,
    shutdown character varying(30),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    hours double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 "   DROP TABLE public.sched_shutdown;
       public         postgres    false    3                    1259    26852 
   sched_user    TABLE     �  CREATE TABLE public.sched_user (
    id character varying(36) NOT NULL,
    user_id character varying(36),
    sched_date date,
    shift_id character varying(36),
    total_hours double precision,
    sched_hours double precision,
    hours_sched double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.sched_user;
       public         postgres    false    3                    1259    26825    scheduler_job    TABLE     �  CREATE TABLE public.scheduler_job (
    id character varying(36) NOT NULL,
    task_id character varying(36),
    note character varying(76),
    is_active smallint,
    start_seq integer DEFAULT 0,
    release_time character varying(512),
    release_day character varying(1024),
    time_due timestamp without time zone,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 !   DROP TABLE public.scheduler_job;
       public         postgres    false    3                    1259    26834    scheduler_job_log    TABLE     �  CREATE TABLE public.scheduler_job_log (
    id character varying(36) NOT NULL,
    job_id character varying(36),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    time_taken double precision,
    results text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 %   DROP TABLE public.scheduler_job_log;
       public         postgres    false    3                    1259    26842    scheduler_task    TABLE     �  CREATE TABLE public.scheduler_task (
    id character varying(36) NOT NULL,
    task character varying(30),
    note character varying(76),
    class_name character varying(76),
    class_path character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 "   DROP TABLE public.scheduler_task;
       public         postgres    false    3                    1259    26857 	   semaphore    TABLE     �   CREATE TABLE public.semaphore (
    id character varying(36) NOT NULL,
    expire_time timestamp without time zone,
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.semaphore;
       public         postgres    false    3                    1259    26862    tax_code    TABLE     [  CREATE TABLE public.tax_code (
    id character varying(36) NOT NULL,
    tax_code character varying(30),
    tax_rate_total double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.tax_code;
       public         postgres    false    3                    1259    26867    tax_rate    TABLE     X  CREATE TABLE public.tax_rate (
    id character varying(36) NOT NULL,
    tax_code_id character varying(36),
    tax_rate double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.tax_rate;
       public         postgres    false    3                    1259    26872    team    TABLE     Q  CREATE TABLE public.team (
    id character varying(36) NOT NULL,
    team character varying(30),
    note character varying(76),
    lead_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.team;
       public         postgres    false    3                    1259    26877    training    TABLE     0  CREATE TABLE public.training (
    id character varying(36) NOT NULL,
    training character varying(50),
    course_id character varying(36),
    instructor_user_id character varying(36),
    instructor_contact_id character varying(36),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    certificate_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.training;
       public         postgres    false    3                    1259    26885    training_certificate    TABLE     S  CREATE TABLE public.training_certificate (
    id character varying(36) NOT NULL,
    certificate character varying(30),
    description text,
    days_valid integer,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 (   DROP TABLE public.training_certificate;
       public         postgres    false    3                    1259    26893    training_course    TABLE     p  CREATE TABLE public.training_course (
    id character varying(36) NOT NULL,
    course character varying(30),
    description text,
    type_id character varying(36),
    hours double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 #   DROP TABLE public.training_course;
       public         postgres    false    3                    1259    26901    training_course_type    TABLE     >  CREATE TABLE public.training_course_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 (   DROP TABLE public.training_course_type;
       public         postgres    false    3                    1259    26906    training_user    TABLE     x  CREATE TABLE public.training_user (
    id character varying(36) NOT NULL,
    training_id character varying(36),
    user_id character varying(36),
    status_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 !   DROP TABLE public.training_user;
       public         postgres    false    3                    1259    26914    uom    TABLE     ,  CREATE TABLE public.uom (
    id character varying(36) NOT NULL,
    uom character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.uom;
       public         postgres    false    3                     1259    26919    uom_map    TABLE     w  CREATE TABLE public.uom_map (
    id character varying(36) NOT NULL,
    uom_src_id character varying(36),
    uom_dst_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.uom_map;
       public         postgres    false    3         !           1259    26924    users    TABLE       CREATE TABLE public.users (
    id character varying(36) NOT NULL,
    username character varying(50),
    status_id character varying(36),
    password character varying(32),
    user_type_id character varying(36),
    emp_no character varying(30),
    contractor_id character varying(36),
    job_role_id character varying(36),
    login_allowed smallint DEFAULT '1'::smallint,
    full_name character varying(50),
    job_title character varying(30),
    note character varying(76),
    acl_group_id character varying(36),
    admin_type_id character varying(36) DEFAULT 'search_admin_none'::character varying,
    team_id character varying(36),
    supervisor_id character varying(36),
    dept_id character varying(36),
    costcode_id character varying(36),
    req_approval_id character varying(36),
    po_approval_id character varying(36),
    craft_id character varying(36),
    phone_work character varying(24),
    phone_home character varying(16),
    phone_mobile character varying(16),
    email_work character varying(50),
    email_other character varying(50),
    im1_type_id character varying(36),
    im1_id character varying(30),
    im2_type_id character varying(36),
    im2_id character varying(30),
    fax character varying(16),
    company character varying(50),
    street1 character varying(50),
    street2 character varying(50),
    city character varying(50),
    state character varying(50),
    zip character varying(16),
    country character varying(50),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.users;
       public         postgres    false    3         "           1259    26934    vendor    TABLE       CREATE TABLE public.vendor (
    id character varying(36) NOT NULL,
    vendor character varying(30),
    tax_code_id character varying(36),
    status_id character varying(36),
    owner_user_id character varying(36),
    note character varying(76),
    contact_id character varying(36),
    address character varying(512),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.vendor;
       public         postgres    false    3         #           1259    26942    vendor_contact    TABLE     c  CREATE TABLE public.vendor_contact (
    id character varying(36) NOT NULL,
    vendor_id character varying(36),
    contact_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 "   DROP TABLE public.vendor_contact;
       public         postgres    false    3         $           1259    26947    version    TABLE     S  CREATE TABLE public.version (
    id character varying(36) NOT NULL,
    vid character varying(30),
    note character varying(76),
    props character varying(2000),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.version;
       public         postgres    false    3         %           1259    26955    version_upgrade_log    TABLE     j  CREATE TABLE public.version_upgrade_log (
    id character varying(36) NOT NULL,
    vid character varying(30),
    ver_note character varying(76),
    prev_vid character varying(30),
    prev_ver_note character varying(76),
    prev_props character varying(2000),
    status_id character varying(36),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    upgrade_note character varying(76),
    results text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 '   DROP TABLE public.version_upgrade_log;
       public         postgres    false    3         '           1259    26971    wo_attachment    TABLE     ^  CREATE TABLE public.wo_attachment (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    file_url character varying(1000),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 !   DROP TABLE public.wo_attachment;
       public         postgres    false    3         (           1259    26979 
   wo_comment    TABLE     '  CREATE TABLE public.wo_comment (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.wo_comment;
       public         postgres    false    3         )           1259    26987    wo_doc    TABLE     d  CREATE TABLE public.wo_doc (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    seq integer,
    doc_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.wo_doc;
       public         postgres    false    3         *           1259    26992    wo_generation    TABLE     =  CREATE TABLE public.wo_generation (
    id character varying(36) NOT NULL,
    status_id character varying(36),
    to_date date,
    wo_count integer,
    note character varying(76),
    modified_time timestamp without time zone,
    created_time timestamp without time zone,
    created_id character varying(36)
);
 !   DROP TABLE public.wo_generation;
       public         postgres    false    3         +           1259    26997    wo_labor    TABLE     �  CREATE TABLE public.wo_labor (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    user_id character varying(36),
    time_type_id character varying(36),
    start_time timestamp without time zone,
    shift_id character varying(36),
    craft_id character varying(36),
    hours double precision,
    ot_hours double precision,
    rate double precision,
    ot_factor double precision,
    line_cost double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.wo_labor;
       public         postgres    false    3         ,           1259    27002    wo_meter    TABLE     W  CREATE TABLE public.wo_meter (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    meter_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.wo_meter;
       public         postgres    false    3         -           1259    27007    wo_part    TABLE     �  CREATE TABLE public.wo_part (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    in_id character varying(36),
    qty_used double precision,
    line_cost double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.wo_part;
       public         postgres    false    3         .           1259    27012    wo_planned_downtime    TABLE     Z  CREATE TABLE public.wo_planned_downtime (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    hours double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 '   DROP TABLE public.wo_planned_downtime;
       public         postgres    false    3         /           1259    27017    wo_planned_labor    TABLE     �  CREATE TABLE public.wo_planned_labor (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    craft_id character varying(36),
    hours double precision,
    crew_size integer,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 $   DROP TABLE public.wo_planned_labor;
       public         postgres    false    3         0           1259    27022    wo_planned_part    TABLE     u  CREATE TABLE public.wo_planned_part (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 #   DROP TABLE public.wo_planned_part;
       public         postgres    false    3         1           1259    27027    wo_planned_tool    TABLE     u  CREATE TABLE public.wo_planned_tool (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 #   DROP TABLE public.wo_planned_tool;
       public         postgres    false    3         2           1259    27032 	   wo_safety    TABLE     �  CREATE TABLE public.wo_safety (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    seq integer,
    description text,
    followed smallint,
    followed_by_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.wo_safety;
       public         postgres    false    3         3           1259    27040    wo_sched_labor    TABLE     �  CREATE TABLE public.wo_sched_labor (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    user_id character varying(36),
    start_time timestamp without time zone,
    shift_id character varying(36),
    hours double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
 "   DROP TABLE public.wo_sched_labor;
       public         postgres    false    3         4           1259    27045    wo_semaphore    TABLE     "  CREATE TABLE public.wo_semaphore (
    id character varying(36) NOT NULL,
    expiration timestamp without time zone,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
     DROP TABLE public.wo_semaphore;
       public         postgres    false    3         5           1259    27050    wo_seq    TABLE     /   CREATE TABLE public.wo_seq (
    id integer
);
    DROP TABLE public.wo_seq;
       public         postgres    false    3         6           1259    27053    wo_status_log    TABLE     )  CREATE TABLE public.wo_status_log (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    to_status_id character varying(36),
    from_status_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);
 !   DROP TABLE public.wo_status_log;
       public         postgres    false    3         7           1259    27061    wo_step    TABLE     �  CREATE TABLE public.wo_step (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    seq integer,
    description text,
    completed smallint,
    completed_by_id character varying(36),
    completed_time timestamp without time zone,
    shift_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.wo_step;
       public         postgres    false    3         8           1259    27069    wo_tool    TABLE     �  CREATE TABLE public.wo_tool (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    in_id character varying(36),
    qty_checkout double precision,
    qty_return double precision,
    line_cost double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.wo_tool;
       public         postgres    false    3         &           1259    26963 	   workorder    TABLE       CREATE TABLE public.workorder (
    id character varying(36) NOT NULL,
    wo_no character varying(30),
    note character varying(76),
    description text,
    asset_id character varying(36),
    pm_id character varying(36),
    asset_note character varying(76),
    category_id character varying(36),
    status_id character varying(36),
    priority_id character varying(36),
    resolution_id character varying(36),
    duplicate_wo_id character varying(36),
    rcm_action_id character varying(36),
    parent_wo_id character varying(36),
    origin_id character varying(36),
    rework_wo_id character varying(36),
    orig_contact_id character varying(36),
    orig_user_id character varying(36),
    orig_time timestamp without time zone,
    assigned_team_id character varying(36),
    assigned_to_id character varying(36),
    assigned_by_id character varying(36),
    assigned_time timestamp without time zone,
    time_needed timestamp without time zone,
    planned_start_time timestamp without time zone,
    sched_start_time timestamp without time zone,
    sched_start_shift_id character varying(36),
    actual_start_time timestamp without time zone,
    actual_start_shift_id character varying(36),
    planned_finish_time timestamp without time zone,
    sched_finish_time timestamp without time zone,
    sched_finish_shift_id character varying(36),
    actual_finish_time timestamp without time zone,
    actual_finish_shift_id character varying(36),
    costcode_id character varying(36),
    project_id character varying(36),
    dept_id character varying(36),
    planned_labor_hours double precision,
    sched_labor_hours double precision,
    actual_labor_hours double precision,
    labor_cost double precision,
    material_cost double precision,
    total_cost double precision,
    planned_downtime_hours double precision,
    actual_downtime_hours double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);
    DROP TABLE public.workorder;
       public         postgres    false    3         �          0    26351 	   acl_group 
   TABLE DATA                  COPY public.acl_group (id, acl_group, parent_group_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    196       3737.dat �          0    26356    asset 
   TABLE DATA               6  COPY public.asset (id, asset_no, note, priority_id, status_id, parent_id, type_id, template_id, category_id, location_id, weight, weight_uom_id, serial_no, owner_user_id, start_date, purchase_date, original_cost, manufacturer_id, vendor_id, upload_id, warranty_start_date, warranty_end_date, maint_labor_hours, maint_labor_cost, maint_material_cost, maint_cost, rollup_cost, costcode_id, dept_id, in_id, depreciation_type_id, depreciation_start, depreciation_time_id, depreciation_rate, description, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    197       3738.dat �          0    26364    asset_comment 
   TABLE DATA               t   COPY public.asset_comment (id, asset_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    198       3739.dat �          0    26372    asset_contract 
   TABLE DATA               �   COPY public.asset_contract (id, asset_id, contract_id, note, status_id, start_date, end_date, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    199       3740.dat �          0    26380    asset_depreciation 
   TABLE DATA               �   COPY public.asset_depreciation (id, asset_id, start_date, end_date, depreciation_rate, start_value, end_value, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    200       3741.dat �          0    26385    asset_downtime 
   TABLE DATA               �   COPY public.asset_downtime (id, asset_id, downtime_type_id, downtime_cause_id, start_time, shift_id, end_time, hours, wo_id, reported_by_id, reported_time, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    201       3742.dat �          0    26390    asset_meter 
   TABLE DATA               �   COPY public.asset_meter (id, asset_id, meter_no, type_id, reading_uom_id, reading, is_rollover, time_taken, rollup_type_id, rollover_reading, rollover_count, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    202       3743.dat �          0    26395 
   asset_part 
   TABLE DATA               �   COPY public.asset_part (id, asset_id, in_id, type_id, qty, uom_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    203       3744.dat �          0    26400 	   asset_seq 
   TABLE DATA               '   COPY public.asset_seq (id) FROM stdin;
    public       postgres    false    204       3745.dat �          0    26403    asset_service_log 
   TABLE DATA               �   COPY public.asset_service_log (id, asset_id, from_status_id, to_status_id, from_location_id, to_location_id, from_parent_id, to_parent_id, from_owner_id, to_owner_id, changed_by_id, created_time, comment) FROM stdin;
    public       postgres    false    205       3746.dat �          0    26411 
   asset_type 
   TABLE DATA               j   COPY public.asset_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    206       3747.dat �          0    26416    budget 
   TABLE DATA               �   COPY public.budget (id, title_id, budget, state_id, start_date, end_date, budgeted, app, accounting, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    207       3748.dat �          0    26421    budget_status_log 
   TABLE DATA               |   COPY public.budget_status_log (id, budget_id, to_state_id, from_state_id, changed_by_id, created_time, comment) FROM stdin;
    public       postgres    false    208       3749.dat �          0    26429    budget_title 
   TABLE DATA               �   COPY public.budget_title (id, title, start_date, end_date, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    209       3750.dat �          0    26434    contact 
   TABLE DATA               .  COPY public.contact (id, full_name, job_title, type_id, note, phone_work, phone_home, phone_mobile, email_work, email_other, im1_type_id, im1_id, im2_type_id, im2_id, fax, company, street1, street2, city, state, zip, country, asset_id, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    210       3751.dat �          0    26442    contract 
   TABLE DATA               �   COPY public.contract (id, contract, vendor_id, note, type_id, status_id, contact_id, owner_user_id, start_date, end_date, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    211       3752.dat �          0    26450    contract_contact 
   TABLE DATA               �   COPY public.contract_contact (id, contract_id, contact_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    212       3753.dat �          0    26455    contract_doc 
   TABLE DATA               �   COPY public.contract_doc (id, contract_id, seq, doc_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    213       3754.dat �          0    26460    costcode 
   TABLE DATA               �   COPY public.costcode (id, costcode, note, dept_id, parent_id, rollup_cost, cost_type_id, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    214       3755.dat �          0    26465    craft 
   TABLE DATA               w   COPY public.craft (id, craft, note, rate, ot_factor, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    215       3756.dat �          0    26470    dash_wo_orig_day 
   TABLE DATA               E   COPY public.dash_wo_orig_day (id, counts, modified_time) FROM stdin;
    public       postgres    false    216       3757.dat �          0    26478    dash_wo_orig_md 
   TABLE DATA               D   COPY public.dash_wo_orig_md (id, counts, modified_time) FROM stdin;
    public       postgres    false    217       3758.dat �          0    26486    dept 
   TABLE DATA               p   COPY public.dept (id, dept, note, manager_id, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    218       3759.dat �          0    26499    doc_attachment 
   TABLE DATA               {   COPY public.doc_attachment (id, doc_id, upload_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    220       3761.dat �          0    26504    doc_type 
   TABLE DATA               h   COPY public.doc_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    221       3762.dat �          0    26509 
   doc_upload 
   TABLE DATA               |   COPY public.doc_upload (id, file_upload, access_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    222       3763.dat �          0    26491    document 
   TABLE DATA               ~   COPY public.document (id, document, content, type_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    219       3760.dat �          0    26514    downtime_unit_cost 
   TABLE DATA               �   COPY public.downtime_unit_cost (id, asset_id, downtime_type_id, hourly_rate, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    223       3764.dat �          0    26543    in_audit 
   TABLE DATA               �   COPY public.in_audit (id, in_id, audit_user_id, start_date, end_date, hours, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    227       3768.dat �          0    26551 
   in_comment 
   TABLE DATA               n   COPY public.in_comment (id, in_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    228       3769.dat �          0    26559    in_doc 
   TABLE DATA               o   COPY public.in_doc (id, in_id, doc_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    229       3770.dat �          0    26564    in_location 
   TABLE DATA               z   COPY public.in_location (id, location, parent_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    230       3771.dat �          0    26569    in_reserved 
   TABLE DATA               r   COPY public.in_reserved (id, in_id, wo_id, qty, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    231       3772.dat �          0    26574    in_seq 
   TABLE DATA               $   COPY public.in_seq (id) FROM stdin;
    public       postgres    false    232       3773.dat �          0    26577    in_stock 
   TABLE DATA               u   COPY public.in_stock (id, in_id, location_id, qty, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    233       3774.dat �          0    26582    in_tran 
   TABLE DATA               �  COPY public.in_tran (id, in_id, type_id, location_id, qty, unit_cost, costcode_id, checkout_type_id, checkout_to_id, receive_type_id, receive_from_id, qty_available, qty_orig, orig_loc_id, checkout_tran_id, rent_duration, rent_rate, tran_total, note, tran_time, tran_user_id, store_user_id, voided, authorized_by_id, void_by_id, void_time, void_note, new_tran_id, created_time, created_id) FROM stdin;
    public       postgres    false    234       3775.dat �          0    26590    in_tran_worksheet 
   TABLE DATA               �   COPY public.in_tran_worksheet (id, in_tran_id, src_tran_id, qty, unit_cost, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    235       3776.dat �          0    26595    in_type 
   TABLE DATA               g   COPY public.in_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    236       3777.dat �          0    26600 	   in_vendor 
   TABLE DATA               �   COPY public.in_vendor (id, in_id, vendor_id, vendor_part_no, is_primary, uom_id, unit_cost, lead_time_days, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    237       3778.dat �          0    26527    ins_citation 
   TABLE DATA               �   COPY public.ins_citation (id, citation, inspection_id, severity_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    225       3766.dat �          0    26519 
   inspection 
   TABLE DATA               �   COPY public.inspection (id, inspection, type_id, inspect_contact_id, inspect_user_id, owner_user_id, start_time, end_time, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    224       3765.dat �          0    26535 	   inventory 
   TABLE DATA               �  COPY public.inventory (id, in_no, note, type_id, category_id, stock_type_id, valuation_type_id, abc_id, abc_time, uom_id, avg_unit_cost, rent_uom_id, rent_rate, qty_in_stock, qty_on_order, qty_reserved, qty_to_order, order_gen_id, order_type_id, min_level, max_level, reorder_point, reorder_qty, owner_user_id, notification_id, costcode_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    226       3767.dat �          0    26605    manufacturer 
   TABLE DATA               �   COPY public.manufacturer (id, manufacturer, note, contact_id, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    238       3779.dat �          0    26610    meter_transaction 
   TABLE DATA               �   COPY public.meter_transaction (id, meter_id, read_by_id, time_taken, reading, is_rollover, wo_id, note, created_time, created_id) FROM stdin;
    public       postgres    false    239       3780.dat �          0    26615 
   meter_type 
   TABLE DATA               j   COPY public.meter_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    240       3781.dat �          0    26620    pm 
   TABLE DATA               L  COPY public.pm (id, pm_no, description, status_id, asset_type_id, rcm_action_id, category_id, priority_id, origin_id, origin_user_id, assigned_to_id, assigned_team_id, duration_hours, release_type_id, schedule_type_id, release_schedule, labor_hours, downtime_hours, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    241       3782.dat �          0    26628    pm_asset 
   TABLE DATA               �   COPY public.pm_asset (id, pm_id, asset_id, last_released, last_closed, next_due_date, release_count, costcode_id, dept_id, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    242       3783.dat �          0    26633    pm_audit 
   TABLE DATA               �   COPY public.pm_audit (id, pm_id, audit_user_id, start_date, end_date, hours, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    243       3784.dat �          0    26642 
   pm_comment 
   TABLE DATA               n   COPY public.pm_comment (id, pm_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    244       3785.dat �          0    26650    pm_dependency 
   TABLE DATA               �   COPY public.pm_dependency (id, pm_id, child_pm_id, type_id, scope_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    245       3786.dat �          0    26655    pm_doc 
   TABLE DATA               t   COPY public.pm_doc (id, pm_id, seq, doc_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    246       3787.dat �          0    26660    pm_downtime 
   TABLE DATA               s   COPY public.pm_downtime (id, pm_id, hours, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    247       3788.dat �          0    26665    pm_labor 
   TABLE DATA               �   COPY public.pm_labor (id, pm_id, craft_id, hours, crew_size, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    248       3789.dat �          0    26670    pm_meter 
   TABLE DATA               �   COPY public.pm_meter (id, pm_asset_id, meter_id, release_by_meter, reading_released, rollover_count, reading_interval, copy_to_wo, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    249       3790.dat �          0    26675    pm_part 
   TABLE DATA               t   COPY public.pm_part (id, pm_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    250       3791.dat �          0    26680 	   pm_safety 
   TABLE DATA               v   COPY public.pm_safety (id, pm_id, seq, description, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    251       3792.dat �          0    26688 	   pm_season 
   TABLE DATA               �   COPY public.pm_season (id, pm_asset_id, start_date, end_date, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    252       3793.dat �          0    26693    pm_step 
   TABLE DATA               t   COPY public.pm_step (id, pm_id, seq, description, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    253       3794.dat �          0    26701    pm_tool 
   TABLE DATA               t   COPY public.pm_tool (id, pm_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    254       3795.dat �          0    26706    po 
   TABLE DATA               �  COPY public.po (id, po_no, status_id, state_id, buyer_id, buyer_name, buyer_phone, po_date, next_user_id, next_note, vendor_id, vendor_addr, vendor_contact_id, vendor_contact_phone, payment_term_id, shipping_type_id, shipping_term_id, shipping_addr_id, billing_addr_id, po_item_total, tax_rate_total, tax_charge, total_charge, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    255       3796.dat �          0    26714 
   po_address 
   TABLE DATA               v   COPY public.po_address (id, address, type_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    256       3797.dat �          0    26722    po_item 
   TABLE DATA               �   COPY public.po_item (id, line_no, po_id, in_id, vendor_part_no, note, unit_cost, qty, qty_received, uom_id, due_date, line_cost, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    257       3798.dat �          0    26727    po_seq 
   TABLE DATA               $   COPY public.po_seq (id) FROM stdin;
    public       postgres    false    258       3799.dat �          0    26730    po_status_log 
   TABLE DATA               �   COPY public.po_status_log (id, po_id, from_status_id, to_status_id, from_state_id, to_state_id, changed_by_id, created_time, comment) FROM stdin;
    public       postgres    false    259       3800.dat �          0    26738    project 
   TABLE DATA               6  COPY public.project (id, project_no, parent_id, note, status_id, priority_id, type_id, owner_user_id, sched_start_time, sched_end_time, actual_start_time, actual_end_time, sched_hours, actual_hours, percent_done, dept_id, costcode_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    260       3801.dat �          0    26746    project_type 
   TABLE DATA               l   COPY public.project_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    261       3802.dat �          0    26751 
   rcm_action 
   TABLE DATA               �   COPY public.rcm_action (id, failure_id, cause, action, cause_type_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    262       3803.dat �          0    26759    rcm_action_part 
   TABLE DATA               �   COPY public.rcm_action_part (id, action_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    263       3804.dat �          0    26764    rcm_consequence 
   TABLE DATA               �   COPY public.rcm_consequence (id, failure_id, consequence, type_id, pm_policy_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    264       3805.dat �          0    26772    rcm_failure 
   TABLE DATA               �   COPY public.rcm_failure (id, failure, is_evident, function_id, template_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    265       3806.dat �          0    26780    rcm_function 
   TABLE DATA               �   COPY public.rcm_function (id, fn_name, template_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    266       3807.dat �          0    26788    rcm_template 
   TABLE DATA               p   COPY public.rcm_template (id, template, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    267       3808.dat �          0    26793    recycle_bin 
   TABLE DATA               ~   COPY public.recycle_bin (id, parent_id, description, table_name, rec_id, value_deleted, created_time, created_id) FROM stdin;
    public       postgres    false    268       3809.dat �          0    26809    req_item 
   TABLE DATA               �   COPY public.req_item (id, req_id, in_id, vendor_id, vendor_part_no, unit_cost, qty, uom_id, line_cost, po_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    270       3811.dat �          0    26814    req_seq 
   TABLE DATA               %   COPY public.req_seq (id) FROM stdin;
    public       postgres    false    271       3812.dat �          0    26817    req_status_log 
   TABLE DATA               �   COPY public.req_status_log (id, req_id, from_status_id, to_status_id, from_state_id, to_state_id, changed_by_id, created_time, comment) FROM stdin;
    public       postgres    false    272       3813.dat �          0    26801    requisition 
   TABLE DATA               +  COPY public.requisition (id, req_no, description, priority_id, status_id, req_on_po_id, source_id, state_id, due_date, shipping_type_id, wo_id, request_user_id, request_time, req_total, costcode_id, dept_id, next_user_id, next_note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    269       3810.dat �          0    26847    sched_shutdown 
   TABLE DATA               �   COPY public.sched_shutdown (id, shutdown, start_time, end_time, hours, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    276       3817.dat �          0    26852 
   sched_user 
   TABLE DATA               �   COPY public.sched_user (id, user_id, sched_date, shift_id, total_hours, sched_hours, hours_sched, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    277       3818.dat �          0    26825    scheduler_job 
   TABLE DATA               �   COPY public.scheduler_job (id, task_id, note, is_active, start_seq, release_time, release_day, time_due, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    273       3814.dat �          0    26834    scheduler_job_log 
   TABLE DATA               �   COPY public.scheduler_job_log (id, job_id, start_time, end_time, time_taken, results, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    274       3815.dat �          0    26842    scheduler_task 
   TABLE DATA               �   COPY public.scheduler_task (id, task, note, class_name, class_path, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    275       3816.dat �          0    26857 	   semaphore 
   TABLE DATA               N   COPY public.semaphore (id, expire_time, created_time, created_id) FROM stdin;
    public       postgres    false    278       3819.dat �          0    26862    tax_code 
   TABLE DATA               |   COPY public.tax_code (id, tax_code, tax_rate_total, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    279       3820.dat �          0    26867    tax_rate 
   TABLE DATA               y   COPY public.tax_rate (id, tax_code_id, tax_rate, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    280       3821.dat �          0    26872    team 
   TABLE DATA               m   COPY public.team (id, team, note, lead_id, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    281       3822.dat �          0    26877    training 
   TABLE DATA               �   COPY public.training (id, training, course_id, instructor_user_id, instructor_contact_id, start_time, end_time, certificate_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    282       3823.dat �          0    26885    training_certificate 
   TABLE DATA               �   COPY public.training_certificate (id, certificate, description, days_valid, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    283       3824.dat �          0    26893    training_course 
   TABLE DATA               �   COPY public.training_course (id, course, description, type_id, hours, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    284       3825.dat �          0    26901    training_course_type 
   TABLE DATA               t   COPY public.training_course_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    285       3826.dat �          0    26906    training_user 
   TABLE DATA               �   COPY public.training_user (id, training_id, user_id, status_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    286       3827.dat �          0    26914    uom 
   TABLE DATA               b   COPY public.uom (id, uom, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    287       3828.dat �          0    26919    uom_map 
   TABLE DATA               ~   COPY public.uom_map (id, uom_src_id, uom_dst_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    288       3829.dat �          0    26924    users 
   TABLE DATA               �  COPY public.users (id, username, status_id, password, user_type_id, emp_no, contractor_id, job_role_id, login_allowed, full_name, job_title, note, acl_group_id, admin_type_id, team_id, supervisor_id, dept_id, costcode_id, req_approval_id, po_approval_id, craft_id, phone_work, phone_home, phone_mobile, email_work, email_other, im1_type_id, im1_id, im2_type_id, im2_id, fax, company, street1, street2, city, state, zip, country, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    289       3830.dat �          0    26934    vendor 
   TABLE DATA               �   COPY public.vendor (id, vendor, tax_code_id, status_id, owner_user_id, note, contact_id, address, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    290       3831.dat �          0    26942    vendor_contact 
   TABLE DATA                  COPY public.vendor_contact (id, vendor_id, contact_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    291       3832.dat �          0    26947    version 
   TABLE DATA               m   COPY public.version (id, vid, note, props, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    292       3833.dat �          0    26955    version_upgrade_log 
   TABLE DATA               �   COPY public.version_upgrade_log (id, vid, ver_note, prev_vid, prev_ver_note, prev_props, status_id, start_time, end_time, upgrade_note, results, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    293       3834.dat �          0    26971    wo_attachment 
   TABLE DATA               x   COPY public.wo_attachment (id, wo_id, file_url, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    295       3836.dat �          0    26979 
   wo_comment 
   TABLE DATA               n   COPY public.wo_comment (id, wo_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    296       3837.dat �          0    26987    wo_doc 
   TABLE DATA               t   COPY public.wo_doc (id, wo_id, seq, doc_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    297       3838.dat �          0    26992    wo_generation 
   TABLE DATA               x   COPY public.wo_generation (id, status_id, to_date, wo_count, note, modified_time, created_time, created_id) FROM stdin;
    public       postgres    false    298       3839.dat            0    26997    wo_labor 
   TABLE DATA               �   COPY public.wo_labor (id, wo_id, user_id, time_type_id, start_time, shift_id, craft_id, hours, ot_hours, rate, ot_factor, line_cost, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    299       3840.dat           0    27002    wo_meter 
   TABLE DATA               s   COPY public.wo_meter (id, wo_id, meter_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    300       3841.dat           0    27007    wo_part 
   TABLE DATA               �   COPY public.wo_part (id, wo_id, in_id, qty_used, line_cost, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    301       3842.dat           0    27012    wo_planned_downtime 
   TABLE DATA               {   COPY public.wo_planned_downtime (id, wo_id, hours, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    302       3843.dat           0    27017    wo_planned_labor 
   TABLE DATA               �   COPY public.wo_planned_labor (id, wo_id, craft_id, hours, crew_size, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    303       3844.dat           0    27022    wo_planned_part 
   TABLE DATA               |   COPY public.wo_planned_part (id, wo_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    304       3845.dat           0    27027    wo_planned_tool 
   TABLE DATA               |   COPY public.wo_planned_tool (id, wo_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    305       3846.dat           0    27032 	   wo_safety 
   TABLE DATA               �   COPY public.wo_safety (id, wo_id, seq, description, followed, followed_by_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    306       3847.dat           0    27040    wo_sched_labor 
   TABLE DATA               �   COPY public.wo_sched_labor (id, wo_id, user_id, start_time, shift_id, hours, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    307       3848.dat 	          0    27045    wo_semaphore 
   TABLE DATA               l   COPY public.wo_semaphore (id, expiration, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    308       3849.dat 
          0    27050    wo_seq 
   TABLE DATA               $   COPY public.wo_seq (id) FROM stdin;
    public       postgres    false    309       3850.dat           0    27053    wo_status_log 
   TABLE DATA               v   COPY public.wo_status_log (id, wo_id, to_status_id, from_status_id, changed_by_id, created_time, comment) FROM stdin;
    public       postgres    false    310       3851.dat           0    27061    wo_step 
   TABLE DATA               �   COPY public.wo_step (id, wo_id, seq, description, completed, completed_by_id, completed_time, shift_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    311       3852.dat           0    27069    wo_tool 
   TABLE DATA               �   COPY public.wo_tool (id, wo_id, in_id, qty_checkout, qty_return, line_cost, note, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    312       3853.dat �          0    26963 	   workorder 
   TABLE DATA                 COPY public.workorder (id, wo_no, note, description, asset_id, pm_id, asset_note, category_id, status_id, priority_id, resolution_id, duplicate_wo_id, rcm_action_id, parent_wo_id, origin_id, rework_wo_id, orig_contact_id, orig_user_id, orig_time, assigned_team_id, assigned_to_id, assigned_by_id, assigned_time, time_needed, planned_start_time, sched_start_time, sched_start_shift_id, actual_start_time, actual_start_shift_id, planned_finish_time, sched_finish_time, sched_finish_shift_id, actual_finish_time, actual_finish_shift_id, costcode_id, project_id, dept_id, planned_labor_hours, sched_labor_hours, actual_labor_hours, labor_cost, material_cost, total_cost, planned_downtime_hours, actual_downtime_hours, modified_time, modified_id, created_time, created_id) FROM stdin;
    public       postgres    false    294       3835.dat p           2606    26355    acl_group acl_group_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.acl_group
    ADD CONSTRAINT acl_group_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.acl_group DROP CONSTRAINT acl_group_pkey;
       public         postgres    false    196         t           2606    26371     asset_comment asset_comment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.asset_comment
    ADD CONSTRAINT asset_comment_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.asset_comment DROP CONSTRAINT asset_comment_pkey;
       public         postgres    false    198         v           2606    26379 "   asset_contract asset_contract_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT asset_contract_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT asset_contract_pkey;
       public         postgres    false    199         x           2606    26384 *   asset_depreciation asset_depreciation_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.asset_depreciation
    ADD CONSTRAINT asset_depreciation_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.asset_depreciation DROP CONSTRAINT asset_depreciation_pkey;
       public         postgres    false    200         z           2606    26389 "   asset_downtime asset_downtime_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT asset_downtime_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT asset_downtime_pkey;
       public         postgres    false    201         |           2606    26394    asset_meter asset_meter_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT asset_meter_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT asset_meter_pkey;
       public         postgres    false    202         ~           2606    26399    asset_part asset_part_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT asset_part_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.asset_part DROP CONSTRAINT asset_part_pkey;
       public         postgres    false    203         r           2606    26363    asset asset_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_pkey;
       public         postgres    false    197         �           2606    26410 (   asset_service_log asset_service_log_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT asset_service_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT asset_service_log_pkey;
       public         postgres    false    205         �           2606    26415    asset_type asset_type_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.asset_type
    ADD CONSTRAINT asset_type_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.asset_type DROP CONSTRAINT asset_type_pkey;
       public         postgres    false    206         �           2606    26420    budget budget_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.budget
    ADD CONSTRAINT budget_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.budget DROP CONSTRAINT budget_pkey;
       public         postgres    false    207         �           2606    26428 (   budget_status_log budget_status_log_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.budget_status_log
    ADD CONSTRAINT budget_status_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.budget_status_log DROP CONSTRAINT budget_status_log_pkey;
       public         postgres    false    208         �           2606    26433    budget_title budget_title_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.budget_title
    ADD CONSTRAINT budget_title_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.budget_title DROP CONSTRAINT budget_title_pkey;
       public         postgres    false    209         �           2606    26441    contact contact_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
       public         postgres    false    210         �           2606    26454 &   contract_contact contract_contact_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.contract_contact
    ADD CONSTRAINT contract_contact_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.contract_contact DROP CONSTRAINT contract_contact_pkey;
       public         postgres    false    212         �           2606    26459    contract_doc contract_doc_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.contract_doc
    ADD CONSTRAINT contract_doc_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.contract_doc DROP CONSTRAINT contract_doc_pkey;
       public         postgres    false    213         �           2606    26449    contract contract_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_pkey;
       public         postgres    false    211         �           2606    26464    costcode costcode_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.costcode
    ADD CONSTRAINT costcode_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.costcode DROP CONSTRAINT costcode_pkey;
       public         postgres    false    214         �           2606    26469    craft craft_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.craft
    ADD CONSTRAINT craft_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.craft DROP CONSTRAINT craft_pkey;
       public         postgres    false    215         �           2606    26477 &   dash_wo_orig_day dash_wo_orig_day_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.dash_wo_orig_day
    ADD CONSTRAINT dash_wo_orig_day_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.dash_wo_orig_day DROP CONSTRAINT dash_wo_orig_day_pkey;
       public         postgres    false    216         �           2606    26485 $   dash_wo_orig_md dash_wo_orig_md_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dash_wo_orig_md
    ADD CONSTRAINT dash_wo_orig_md_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.dash_wo_orig_md DROP CONSTRAINT dash_wo_orig_md_pkey;
       public         postgres    false    217         �           2606    26490    dept dept_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.dept DROP CONSTRAINT dept_pkey;
       public         postgres    false    218         �           2606    26503 "   doc_attachment doc_attachment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.doc_attachment
    ADD CONSTRAINT doc_attachment_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.doc_attachment DROP CONSTRAINT doc_attachment_pkey;
       public         postgres    false    220         �           2606    26508    doc_type doc_type_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.doc_type
    ADD CONSTRAINT doc_type_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.doc_type DROP CONSTRAINT doc_type_pkey;
       public         postgres    false    221         �           2606    26513    doc_upload doc_upload_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.doc_upload
    ADD CONSTRAINT doc_upload_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.doc_upload DROP CONSTRAINT doc_upload_pkey;
       public         postgres    false    222         �           2606    26498    document document_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.document DROP CONSTRAINT document_pkey;
       public         postgres    false    219         �           2606    26518 *   downtime_unit_cost downtime_unit_cost_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.downtime_unit_cost
    ADD CONSTRAINT downtime_unit_cost_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.downtime_unit_cost DROP CONSTRAINT downtime_unit_cost_pkey;
       public         postgres    false    223         �           2606    26550    in_audit in_audit_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.in_audit
    ADD CONSTRAINT in_audit_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.in_audit DROP CONSTRAINT in_audit_pkey;
       public         postgres    false    227         �           2606    26558    in_comment in_comment_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.in_comment
    ADD CONSTRAINT in_comment_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.in_comment DROP CONSTRAINT in_comment_pkey;
       public         postgres    false    228         �           2606    26563    in_doc in_doc_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.in_doc
    ADD CONSTRAINT in_doc_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.in_doc DROP CONSTRAINT in_doc_pkey;
       public         postgres    false    229         �           2606    26568    in_location in_location_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.in_location
    ADD CONSTRAINT in_location_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.in_location DROP CONSTRAINT in_location_pkey;
       public         postgres    false    230         �           2606    26573    in_reserved in_reserved_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.in_reserved
    ADD CONSTRAINT in_reserved_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.in_reserved DROP CONSTRAINT in_reserved_pkey;
       public         postgres    false    231         �           2606    26581    in_stock in_stock_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.in_stock
    ADD CONSTRAINT in_stock_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.in_stock DROP CONSTRAINT in_stock_pkey;
       public         postgres    false    233         �           2606    26589    in_tran in_tran_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT in_tran_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.in_tran DROP CONSTRAINT in_tran_pkey;
       public         postgres    false    234         �           2606    26594 (   in_tran_worksheet in_tran_worksheet_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.in_tran_worksheet
    ADD CONSTRAINT in_tran_worksheet_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.in_tran_worksheet DROP CONSTRAINT in_tran_worksheet_pkey;
       public         postgres    false    235         �           2606    26599    in_type in_type_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.in_type
    ADD CONSTRAINT in_type_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.in_type DROP CONSTRAINT in_type_pkey;
       public         postgres    false    236         �           2606    26604    in_vendor in_vendor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.in_vendor
    ADD CONSTRAINT in_vendor_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.in_vendor DROP CONSTRAINT in_vendor_pkey;
       public         postgres    false    237         �           2606    26534    ins_citation ins_citation_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ins_citation
    ADD CONSTRAINT ins_citation_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ins_citation DROP CONSTRAINT ins_citation_pkey;
       public         postgres    false    225         �           2606    26526    inspection inspection_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.inspection
    ADD CONSTRAINT inspection_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.inspection DROP CONSTRAINT inspection_pkey;
       public         postgres    false    224         �           2606    26542    inventory inventory_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public         postgres    false    226         �           2606    26609    manufacturer manufacturer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT manufacturer_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT manufacturer_pkey;
       public         postgres    false    238         �           2606    26614 (   meter_transaction meter_transaction_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT meter_transaction_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT meter_transaction_pkey;
       public         postgres    false    239         �           2606    26619    meter_type meter_type_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.meter_type
    ADD CONSTRAINT meter_type_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.meter_type DROP CONSTRAINT meter_type_pkey;
       public         postgres    false    240         �           2606    26632    pm_asset pm_asset_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT pm_asset_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT pm_asset_pkey;
       public         postgres    false    242         �           2606    26641    pm_audit pm_audit_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pm_audit
    ADD CONSTRAINT pm_audit_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pm_audit DROP CONSTRAINT pm_audit_pkey;
       public         postgres    false    243         �           2606    26649    pm_comment pm_comment_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.pm_comment
    ADD CONSTRAINT pm_comment_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.pm_comment DROP CONSTRAINT pm_comment_pkey;
       public         postgres    false    244         �           2606    26654     pm_dependency pm_dependency_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pm_dependency
    ADD CONSTRAINT pm_dependency_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.pm_dependency DROP CONSTRAINT pm_dependency_pkey;
       public         postgres    false    245         �           2606    26659    pm_doc pm_doc_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pm_doc
    ADD CONSTRAINT pm_doc_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.pm_doc DROP CONSTRAINT pm_doc_pkey;
       public         postgres    false    246         �           2606    26664    pm_downtime pm_downtime_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pm_downtime
    ADD CONSTRAINT pm_downtime_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.pm_downtime DROP CONSTRAINT pm_downtime_pkey;
       public         postgres    false    247         �           2606    26669    pm_labor pm_labor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pm_labor
    ADD CONSTRAINT pm_labor_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pm_labor DROP CONSTRAINT pm_labor_pkey;
       public         postgres    false    248         �           2606    26674    pm_meter pm_meter_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pm_meter
    ADD CONSTRAINT pm_meter_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pm_meter DROP CONSTRAINT pm_meter_pkey;
       public         postgres    false    249         �           2606    26679    pm_part pm_part_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pm_part
    ADD CONSTRAINT pm_part_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pm_part DROP CONSTRAINT pm_part_pkey;
       public         postgres    false    250         �           2606    26627 
   pm pm_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY public.pm
    ADD CONSTRAINT pm_pkey PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.pm DROP CONSTRAINT pm_pkey;
       public         postgres    false    241         �           2606    26687    pm_safety pm_safety_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pm_safety
    ADD CONSTRAINT pm_safety_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pm_safety DROP CONSTRAINT pm_safety_pkey;
       public         postgres    false    251         �           2606    26692    pm_season pm_season_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pm_season
    ADD CONSTRAINT pm_season_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pm_season DROP CONSTRAINT pm_season_pkey;
       public         postgres    false    252         �           2606    26700    pm_step pm_step_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pm_step
    ADD CONSTRAINT pm_step_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pm_step DROP CONSTRAINT pm_step_pkey;
       public         postgres    false    253         �           2606    26705    pm_tool pm_tool_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pm_tool
    ADD CONSTRAINT pm_tool_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pm_tool DROP CONSTRAINT pm_tool_pkey;
       public         postgres    false    254         �           2606    26721    po_address po_address_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.po_address
    ADD CONSTRAINT po_address_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.po_address DROP CONSTRAINT po_address_pkey;
       public         postgres    false    256         �           2606    26726    po_item po_item_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.po_item
    ADD CONSTRAINT po_item_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.po_item DROP CONSTRAINT po_item_pkey;
       public         postgres    false    257         �           2606    26713 
   po po_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY public.po
    ADD CONSTRAINT po_pkey PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.po DROP CONSTRAINT po_pkey;
       public         postgres    false    255         �           2606    26737     po_status_log po_status_log_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.po_status_log
    ADD CONSTRAINT po_status_log_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.po_status_log DROP CONSTRAINT po_status_log_pkey;
       public         postgres    false    259         �           2606    26745    project project_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.project DROP CONSTRAINT project_pkey;
       public         postgres    false    260         �           2606    26750    project_type project_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.project_type
    ADD CONSTRAINT project_type_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.project_type DROP CONSTRAINT project_type_pkey;
       public         postgres    false    261         �           2606    26763 $   rcm_action_part rcm_action_part_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.rcm_action_part
    ADD CONSTRAINT rcm_action_part_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.rcm_action_part DROP CONSTRAINT rcm_action_part_pkey;
       public         postgres    false    263         �           2606    26758    rcm_action rcm_action_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.rcm_action
    ADD CONSTRAINT rcm_action_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.rcm_action DROP CONSTRAINT rcm_action_pkey;
       public         postgres    false    262         �           2606    26771 $   rcm_consequence rcm_consequence_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.rcm_consequence
    ADD CONSTRAINT rcm_consequence_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.rcm_consequence DROP CONSTRAINT rcm_consequence_pkey;
       public         postgres    false    264         �           2606    26779    rcm_failure rcm_failure_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.rcm_failure
    ADD CONSTRAINT rcm_failure_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.rcm_failure DROP CONSTRAINT rcm_failure_pkey;
       public         postgres    false    265         �           2606    26787    rcm_function rcm_function_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.rcm_function
    ADD CONSTRAINT rcm_function_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.rcm_function DROP CONSTRAINT rcm_function_pkey;
       public         postgres    false    266         �           2606    26792    rcm_template rcm_template_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.rcm_template
    ADD CONSTRAINT rcm_template_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.rcm_template DROP CONSTRAINT rcm_template_pkey;
       public         postgres    false    267         �           2606    26800    recycle_bin recycle_bin_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.recycle_bin
    ADD CONSTRAINT recycle_bin_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.recycle_bin DROP CONSTRAINT recycle_bin_pkey;
       public         postgres    false    268         �           2606    26813    req_item req_item_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT req_item_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.req_item DROP CONSTRAINT req_item_pkey;
       public         postgres    false    270                     2606    26824 "   req_status_log req_status_log_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.req_status_log
    ADD CONSTRAINT req_status_log_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.req_status_log DROP CONSTRAINT req_status_log_pkey;
       public         postgres    false    272         �           2606    26808    requisition requisition_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT requisition_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.requisition DROP CONSTRAINT requisition_pkey;
       public         postgres    false    269                    2606    26851 "   sched_shutdown sched_shutdown_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sched_shutdown
    ADD CONSTRAINT sched_shutdown_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.sched_shutdown DROP CONSTRAINT sched_shutdown_pkey;
       public         postgres    false    276         
           2606    26856    sched_user sched_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sched_user
    ADD CONSTRAINT sched_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sched_user DROP CONSTRAINT sched_user_pkey;
       public         postgres    false    277                    2606    26841 (   scheduler_job_log scheduler_job_log_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.scheduler_job_log
    ADD CONSTRAINT scheduler_job_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.scheduler_job_log DROP CONSTRAINT scheduler_job_log_pkey;
       public         postgres    false    274                    2606    26833     scheduler_job scheduler_job_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.scheduler_job
    ADD CONSTRAINT scheduler_job_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.scheduler_job DROP CONSTRAINT scheduler_job_pkey;
       public         postgres    false    273                    2606    26846 "   scheduler_task scheduler_task_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.scheduler_task
    ADD CONSTRAINT scheduler_task_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.scheduler_task DROP CONSTRAINT scheduler_task_pkey;
       public         postgres    false    275                    2606    26861    semaphore semaphore_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.semaphore
    ADD CONSTRAINT semaphore_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.semaphore DROP CONSTRAINT semaphore_pkey;
       public         postgres    false    278                    2606    26866    tax_code tax_code_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tax_code
    ADD CONSTRAINT tax_code_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tax_code DROP CONSTRAINT tax_code_pkey;
       public         postgres    false    279                    2606    26871    tax_rate tax_rate_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT tax_rate_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT tax_rate_pkey;
       public         postgres    false    280                    2606    26876    team team_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public         postgres    false    281                    2606    26892 .   training_certificate training_certificate_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.training_certificate
    ADD CONSTRAINT training_certificate_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.training_certificate DROP CONSTRAINT training_certificate_pkey;
       public         postgres    false    283                    2606    26900 $   training_course training_course_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.training_course
    ADD CONSTRAINT training_course_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.training_course DROP CONSTRAINT training_course_pkey;
       public         postgres    false    284                    2606    26905 .   training_course_type training_course_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.training_course_type
    ADD CONSTRAINT training_course_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.training_course_type DROP CONSTRAINT training_course_type_pkey;
       public         postgres    false    285                    2606    26884    training training_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.training
    ADD CONSTRAINT training_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.training DROP CONSTRAINT training_pkey;
       public         postgres    false    282                    2606    26913     training_user training_user_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.training_user
    ADD CONSTRAINT training_user_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.training_user DROP CONSTRAINT training_user_pkey;
       public         postgres    false    286                     2606    26923    uom_map uom_map_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.uom_map
    ADD CONSTRAINT uom_map_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.uom_map DROP CONSTRAINT uom_map_pkey;
       public         postgres    false    288                    2606    26918    uom uom_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.uom
    ADD CONSTRAINT uom_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.uom DROP CONSTRAINT uom_pkey;
       public         postgres    false    287         "           2606    26933    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    289         &           2606    26946 "   vendor_contact vendor_contact_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.vendor_contact
    ADD CONSTRAINT vendor_contact_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.vendor_contact DROP CONSTRAINT vendor_contact_pkey;
       public         postgres    false    291         $           2606    26941    vendor vendor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT vendor_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.vendor DROP CONSTRAINT vendor_pkey;
       public         postgres    false    290         (           2606    26954    version version_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.version
    ADD CONSTRAINT version_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.version DROP CONSTRAINT version_pkey;
       public         postgres    false    292         *           2606    26962 ,   version_upgrade_log version_upgrade_log_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.version_upgrade_log
    ADD CONSTRAINT version_upgrade_log_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.version_upgrade_log DROP CONSTRAINT version_upgrade_log_pkey;
       public         postgres    false    293         .           2606    26978     wo_attachment wo_attachment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.wo_attachment
    ADD CONSTRAINT wo_attachment_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.wo_attachment DROP CONSTRAINT wo_attachment_pkey;
       public         postgres    false    295         0           2606    26986    wo_comment wo_comment_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.wo_comment
    ADD CONSTRAINT wo_comment_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.wo_comment DROP CONSTRAINT wo_comment_pkey;
       public         postgres    false    296         2           2606    26991    wo_doc wo_doc_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.wo_doc
    ADD CONSTRAINT wo_doc_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.wo_doc DROP CONSTRAINT wo_doc_pkey;
       public         postgres    false    297         4           2606    26996     wo_generation wo_generation_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.wo_generation
    ADD CONSTRAINT wo_generation_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.wo_generation DROP CONSTRAINT wo_generation_pkey;
       public         postgres    false    298         6           2606    27001    wo_labor wo_labor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.wo_labor
    ADD CONSTRAINT wo_labor_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.wo_labor DROP CONSTRAINT wo_labor_pkey;
       public         postgres    false    299         8           2606    27006    wo_meter wo_meter_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.wo_meter
    ADD CONSTRAINT wo_meter_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.wo_meter DROP CONSTRAINT wo_meter_pkey;
       public         postgres    false    300         :           2606    27011    wo_part wo_part_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.wo_part
    ADD CONSTRAINT wo_part_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.wo_part DROP CONSTRAINT wo_part_pkey;
       public         postgres    false    301         <           2606    27016 ,   wo_planned_downtime wo_planned_downtime_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.wo_planned_downtime
    ADD CONSTRAINT wo_planned_downtime_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.wo_planned_downtime DROP CONSTRAINT wo_planned_downtime_pkey;
       public         postgres    false    302         >           2606    27021 &   wo_planned_labor wo_planned_labor_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.wo_planned_labor
    ADD CONSTRAINT wo_planned_labor_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.wo_planned_labor DROP CONSTRAINT wo_planned_labor_pkey;
       public         postgres    false    303         @           2606    27026 $   wo_planned_part wo_planned_part_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.wo_planned_part
    ADD CONSTRAINT wo_planned_part_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.wo_planned_part DROP CONSTRAINT wo_planned_part_pkey;
       public         postgres    false    304         B           2606    27031 $   wo_planned_tool wo_planned_tool_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.wo_planned_tool
    ADD CONSTRAINT wo_planned_tool_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.wo_planned_tool DROP CONSTRAINT wo_planned_tool_pkey;
       public         postgres    false    305         D           2606    27039    wo_safety wo_safety_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.wo_safety
    ADD CONSTRAINT wo_safety_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.wo_safety DROP CONSTRAINT wo_safety_pkey;
       public         postgres    false    306         F           2606    27044 "   wo_sched_labor wo_sched_labor_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.wo_sched_labor
    ADD CONSTRAINT wo_sched_labor_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.wo_sched_labor DROP CONSTRAINT wo_sched_labor_pkey;
       public         postgres    false    307         H           2606    27049    wo_semaphore wo_semaphore_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.wo_semaphore
    ADD CONSTRAINT wo_semaphore_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.wo_semaphore DROP CONSTRAINT wo_semaphore_pkey;
       public         postgres    false    308         J           2606    27060     wo_status_log wo_status_log_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.wo_status_log
    ADD CONSTRAINT wo_status_log_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.wo_status_log DROP CONSTRAINT wo_status_log_pkey;
       public         postgres    false    310         L           2606    27068    wo_step wo_step_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.wo_step
    ADD CONSTRAINT wo_step_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.wo_step DROP CONSTRAINT wo_step_pkey;
       public         postgres    false    311         N           2606    27073    wo_tool wo_tool_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.wo_tool
    ADD CONSTRAINT wo_tool_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.wo_tool DROP CONSTRAINT wo_tool_pkey;
       public         postgres    false    312         ,           2606    26970    workorder workorder_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT workorder_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.workorder DROP CONSTRAINT workorder_pkey;
       public         postgres    false    294         h           2606    27199    asset_downtime fk1    FK CONSTRAINT     x   ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk1 FOREIGN KEY (reported_by_id) REFERENCES public.users(id);
 <   ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk1;
       public       postgres    false    3362    289    201         �           2606    27524    meter_type fk11    FK CONSTRAINT     r   ALTER TABLE ONLY public.meter_type
    ADD CONSTRAINT fk11 FOREIGN KEY (modified_id) REFERENCES public.users(id);
 9   ALTER TABLE ONLY public.meter_type DROP CONSTRAINT fk11;
       public       postgres    false    240    3362    289         �           2606    27529    meter_type fk12    FK CONSTRAINT     q   ALTER TABLE ONLY public.meter_type
    ADD CONSTRAINT fk12 FOREIGN KEY (created_id) REFERENCES public.users(id);
 9   ALTER TABLE ONLY public.meter_type DROP CONSTRAINT fk12;
       public       postgres    false    289    240    3362         i           2606    27204    asset_downtime fk2    FK CONSTRAINT     u   ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk2 FOREIGN KEY (modified_id) REFERENCES public.users(id);
 <   ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk2;
       public       postgres    false    3362    289    201         j           2606    27209    asset_downtime fk3    FK CONSTRAINT     t   ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk3 FOREIGN KEY (created_id) REFERENCES public.users(id);
 <   ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk3;
       public       postgres    false    289    201    3362         u           2606    27264    asset_service_log fk_asl_asset    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_asset FOREIGN KEY (from_location_id) REFERENCES public.asset(id);
 H   ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_asset;
       public       postgres    false    197    3186    205         v           2606    27269     asset_service_log fk_asl_asset_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_asset_2 FOREIGN KEY (to_location_id) REFERENCES public.asset(id);
 J   ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_asset_2;
       public       postgres    false    205    197    3186         w           2606    27274    asset_service_log fk_asl_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_user_1 FOREIGN KEY (from_owner_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_user_1;
       public       postgres    false    3362    289    205         x           2606    27279    asset_service_log fk_asl_user_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_user_2 FOREIGN KEY (to_owner_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_user_2;
       public       postgres    false    3362    289    205         y           2606    27284    asset_service_log fk_asl_user_3    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_user_3 FOREIGN KEY (changed_by_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_user_3;
       public       postgres    false    289    205    3362         O           2606    27074    asset fk_asset_asset_loc_1    FK CONSTRAINT     }   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_asset_loc_1 FOREIGN KEY (location_id) REFERENCES public.asset(id);
 D   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_asset_loc_1;
       public       postgres    false    3186    197    197         P           2606    27079    asset fk_asset_asset_type_1    FK CONSTRAINT        ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_asset_type_1 FOREIGN KEY (type_id) REFERENCES public.asset_type(id);
 E   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_asset_type_1;
       public       postgres    false    197    206    3202         \           2606    27139 &   asset_comment fk_asset_comment_asset_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_comment
    ADD CONSTRAINT fk_asset_comment_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 P   ALTER TABLE ONLY public.asset_comment DROP CONSTRAINT fk_asset_comment_asset_1;
       public       postgres    false    198    3186    197         ]           2606    27144 %   asset_comment fk_asset_comment_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_comment
    ADD CONSTRAINT fk_asset_comment_user_1 FOREIGN KEY (modified_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.asset_comment DROP CONSTRAINT fk_asset_comment_user_1;
       public       postgres    false    198    3362    289         ^           2606    27149 %   asset_comment fk_asset_comment_user_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_comment
    ADD CONSTRAINT fk_asset_comment_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.asset_comment DROP CONSTRAINT fk_asset_comment_user_2;
       public       postgres    false    3362    198    289         _           2606    27154 (   asset_contract fk_asset_contract_asset_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT fk_asset_contract_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 R   ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT fk_asset_contract_asset_1;
       public       postgres    false    3186    199    197         `           2606    27159 +   asset_contract fk_asset_contract_contract_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT fk_asset_contract_contract_1 FOREIGN KEY (contract_id) REFERENCES public.contract(id);
 U   ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT fk_asset_contract_contract_1;
       public       postgres    false    199    211    3212         Q           2606    27084    asset fk_asset_costcode_1    FK CONSTRAINT        ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);
 C   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_costcode_1;
       public       postgres    false    197    3218    214         c           2606    27174 "   asset_depreciation fk_asset_create    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_depreciation
    ADD CONSTRAINT fk_asset_create FOREIGN KEY (created_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.asset_depreciation DROP CONSTRAINT fk_asset_create;
       public       postgres    false    200    3362    289         d           2606    27179 0   asset_depreciation fk_asset_depreciation_asset_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_depreciation
    ADD CONSTRAINT fk_asset_depreciation_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 Z   ALTER TABLE ONLY public.asset_depreciation DROP CONSTRAINT fk_asset_depreciation_asset_1;
       public       postgres    false    3186    200    197         R           2606    27089    asset fk_asset_dept_1    FK CONSTRAINT     s   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_dept_1 FOREIGN KEY (dept_id) REFERENCES public.dept(id);
 ?   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_dept_1;
       public       postgres    false    3226    197    218         S           2606    27094    asset fk_asset_document_1    FK CONSTRAINT        ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_document_1 FOREIGN KEY (upload_id) REFERENCES public.doc_upload(id);
 C   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_document_1;
       public       postgres    false    3234    197    222         f           2606    27189 (   asset_downtime fk_asset_downtime_asset_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk_asset_downtime_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 R   ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk_asset_downtime_asset_1;
       public       postgres    false    201    3186    197         g           2606    27194 %   asset_downtime fk_asset_downtime_wo_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk_asset_downtime_wo_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 O   ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk_asset_downtime_wo_1;
       public       postgres    false    3372    201    294         T           2606    27099    asset fk_asset_inventory_1    FK CONSTRAINT     {   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 D   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_inventory_1;
       public       postgres    false    226    3242    197         U           2606    27104    asset fk_asset_manufacturer_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_manufacturer_1 FOREIGN KEY (manufacturer_id) REFERENCES public.manufacturer(id);
 G   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_manufacturer_1;
       public       postgres    false    3264    197    238         k           2606    27214 "   asset_meter fk_asset_meter_asset_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_meter_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 L   ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_meter_asset_1;
       public       postgres    false    197    202    3186         l           2606    27219 '   asset_meter fk_asset_meter_meter_type_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_meter_meter_type_1 FOREIGN KEY (type_id) REFERENCES public.meter_type(id);
 Q   ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_meter_meter_type_1;
       public       postgres    false    3268    240    202         m           2606    27224 !   asset_meter fk_asset_meter_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_meter_user_1 FOREIGN KEY (modified_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_meter_user_1;
       public       postgres    false    3362    202    289         n           2606    27229 !   asset_meter fk_asset_meter_user_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_meter_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_meter_user_2;
       public       postgres    false    202    289    3362         a           2606    27164    asset_contract fk_asset_modif    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT fk_asset_modif FOREIGN KEY (modified_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT fk_asset_modif;
       public       postgres    false    199    3362    289         b           2606    27169    asset_contract fk_asset_modif_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT fk_asset_modif_1 FOREIGN KEY (created_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT fk_asset_modif_1;
       public       postgres    false    289    3362    199         e           2606    27184 $   asset_depreciation fk_asset_modified    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_depreciation
    ADD CONSTRAINT fk_asset_modified FOREIGN KEY (modified_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.asset_depreciation DROP CONSTRAINT fk_asset_modified;
       public       postgres    false    289    200    3362         p           2606    27239     asset_part fk_asset_part_asset_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 J   ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_asset_1;
       public       postgres    false    197    3186    203         q           2606    27244 $   asset_part fk_asset_part_inventory_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 N   ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_inventory_1;
       public       postgres    false    203    226    3242         r           2606    27249    asset_part fk_asset_part_uom_1    FK CONSTRAINT     z   ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_uom_1 FOREIGN KEY (uom_id) REFERENCES public.uom(id);
 H   ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_uom_1;
       public       postgres    false    3358    287    203         s           2606    27254    asset_part fk_asset_part_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_user_1 FOREIGN KEY (modified_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_user_1;
       public       postgres    false    3362    289    203         t           2606    27259    asset_part fk_asset_part_user_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_user_2;
       public       postgres    false    3362    289    203         V           2606    27109    asset fk_asset_rcm_template_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_rcm_template_1 FOREIGN KEY (template_id) REFERENCES public.rcm_template(id);
 G   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_rcm_template_1;
       public       postgres    false    3320    267    197         z           2606    27289 .   asset_service_log fk_asset_service_log_asset_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asset_service_log_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 X   ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asset_service_log_asset_1;
       public       postgres    false    205    197    3186         W           2606    27114    asset fk_asset_uom_1    FK CONSTRAINT     w   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_uom_1 FOREIGN KEY (weight_uom_id) REFERENCES public.uom(id);
 >   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_uom_1;
       public       postgres    false    287    3358    197         o           2606    27234    asset_meter fk_asset_uom_4    FK CONSTRAINT     ~   ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_uom_4 FOREIGN KEY (reading_uom_id) REFERENCES public.uom(id);
 D   ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_uom_4;
       public       postgres    false    202    287    3358         X           2606    27119    asset fk_asset_user_3    FK CONSTRAINT     w   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_user_3 FOREIGN KEY (created_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_user_3;
       public       postgres    false    3362    289    197         Y           2606    27124    asset fk_asset_users_1    FK CONSTRAINT     {   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_users_1 FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_users_1;
       public       postgres    false    197    289    3362         Z           2606    27129    asset fk_asset_users_2    FK CONSTRAINT     y   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_users_2 FOREIGN KEY (modified_id) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_users_2;
       public       postgres    false    3362    289    197         [           2606    27134    asset fk_asset_vendor_1    FK CONSTRAINT     y   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);
 A   ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_vendor_1;
       public       postgres    false    197    290    3364         {           2606    27294    asset_type fk_at_user    FK CONSTRAINT     x   ALTER TABLE ONLY public.asset_type
    ADD CONSTRAINT fk_at_user FOREIGN KEY (modified_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.asset_type DROP CONSTRAINT fk_at_user;
       public       postgres    false    3362    206    289         |           2606    27299    asset_type fk_at_user_2    FK CONSTRAINT     y   ALTER TABLE ONLY public.asset_type
    ADD CONSTRAINT fk_at_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.asset_type DROP CONSTRAINT fk_at_user_2;
       public       postgres    false    289    206    3362         }           2606    27304    budget fk_budget_budget_title_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.budget
    ADD CONSTRAINT fk_budget_budget_title_1 FOREIGN KEY (title_id) REFERENCES public.budget_title(id);
 I   ALTER TABLE ONLY public.budget DROP CONSTRAINT fk_budget_budget_title_1;
       public       postgres    false    209    207    3208         ~           2606    27309 /   budget_status_log fk_budget_status_log_budget_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.budget_status_log
    ADD CONSTRAINT fk_budget_status_log_budget_1 FOREIGN KEY (budget_id) REFERENCES public.budget(id);
 Y   ALTER TABLE ONLY public.budget_status_log DROP CONSTRAINT fk_budget_status_log_budget_1;
       public       postgres    false    207    208    3204         �           2606    27784    req_status_log fk_changed_by    FK CONSTRAINT     �   ALTER TABLE ONLY public.req_status_log
    ADD CONSTRAINT fk_changed_by FOREIGN KEY (changed_by_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.req_status_log DROP CONSTRAINT fk_changed_by;
       public       postgres    false    289    3362    272                    2606    27314    contract fk_contract_contact_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT fk_contract_contact_1 FOREIGN KEY (contact_id) REFERENCES public.contact(id);
 H   ALTER TABLE ONLY public.contract DROP CONSTRAINT fk_contract_contact_1;
       public       postgres    false    210    211    3210         �           2606    27329 .   contract_contact fk_contract_contact_contact_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_contact
    ADD CONSTRAINT fk_contract_contact_contact_1 FOREIGN KEY (contact_id) REFERENCES public.contact(id);
 X   ALTER TABLE ONLY public.contract_contact DROP CONSTRAINT fk_contract_contact_contact_1;
       public       postgres    false    212    210    3210         �           2606    27334 /   contract_contact fk_contract_contact_contract_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_contact
    ADD CONSTRAINT fk_contract_contact_contract_1 FOREIGN KEY (contract_id) REFERENCES public.contract(id);
 Y   ALTER TABLE ONLY public.contract_contact DROP CONSTRAINT fk_contract_contact_contract_1;
       public       postgres    false    3212    212    211         �           2606    27339 '   contract_doc fk_contract_doc_contract_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_doc
    ADD CONSTRAINT fk_contract_doc_contract_1 FOREIGN KEY (contract_id) REFERENCES public.contract(id);
 Q   ALTER TABLE ONLY public.contract_doc DROP CONSTRAINT fk_contract_doc_contract_1;
       public       postgres    false    211    213    3212         �           2606    27344 '   contract_doc fk_contract_doc_document_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract_doc
    ADD CONSTRAINT fk_contract_doc_document_1 FOREIGN KEY (doc_id) REFERENCES public.document(id);
 Q   ALTER TABLE ONLY public.contract_doc DROP CONSTRAINT fk_contract_doc_document_1;
       public       postgres    false    219    213    3228         �           2606    27319    contract fk_contract_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT fk_contract_user_1 FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.contract DROP CONSTRAINT fk_contract_user_1;
       public       postgres    false    289    211    3362         �           2606    27324    contract fk_contract_vendor_1    FK CONSTRAINT        ALTER TABLE ONLY public.contract
    ADD CONSTRAINT fk_contract_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);
 G   ALTER TABLE ONLY public.contract DROP CONSTRAINT fk_contract_vendor_1;
       public       postgres    false    3364    211    290         �           2606    27349    costcode fk_costcode_dept_1    FK CONSTRAINT     y   ALTER TABLE ONLY public.costcode
    ADD CONSTRAINT fk_costcode_dept_1 FOREIGN KEY (dept_id) REFERENCES public.dept(id);
 E   ALTER TABLE ONLY public.costcode DROP CONSTRAINT fk_costcode_dept_1;
       public       postgres    false    218    214    3226         �           2606    27354 -   doc_attachment fk_doc_attachment_doc_upload_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.doc_attachment
    ADD CONSTRAINT fk_doc_attachment_doc_upload_2 FOREIGN KEY (upload_id) REFERENCES public.doc_upload(id);
 W   ALTER TABLE ONLY public.doc_attachment DROP CONSTRAINT fk_doc_attachment_doc_upload_2;
       public       postgres    false    222    220    3234         �           2606    27359 +   doc_attachment fk_doc_attachment_document_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.doc_attachment
    ADD CONSTRAINT fk_doc_attachment_document_2 FOREIGN KEY (doc_id) REFERENCES public.document(id);
 U   ALTER TABLE ONLY public.doc_attachment DROP CONSTRAINT fk_doc_attachment_document_2;
       public       postgres    false    219    220    3228         �           2606    27364    document fk_document_doc_type_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.document
    ADD CONSTRAINT fk_document_doc_type_1 FOREIGN KEY (type_id) REFERENCES public.doc_type(id);
 I   ALTER TABLE ONLY public.document DROP CONSTRAINT fk_document_doc_type_1;
       public       postgres    false    221    219    3232         �           2606    27374     in_audit fk_in_audit_inventory_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_audit
    ADD CONSTRAINT fk_in_audit_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 J   ALTER TABLE ONLY public.in_audit DROP CONSTRAINT fk_in_audit_inventory_1;
       public       postgres    false    227    226    3242         �           2606    27369    in_audit fk_in_audit_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_audit
    ADD CONSTRAINT fk_in_audit_user_1 FOREIGN KEY (audit_user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.in_audit DROP CONSTRAINT fk_in_audit_user_1;
       public       postgres    false    3362    289    227         �           2606    27379 $   in_comment fk_in_comment_inventory_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_comment
    ADD CONSTRAINT fk_in_comment_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 N   ALTER TABLE ONLY public.in_comment DROP CONSTRAINT fk_in_comment_inventory_1;
       public       postgres    false    3242    228    226         �           2606    27384    in_doc fk_in_doc_document_1    FK CONSTRAINT     |   ALTER TABLE ONLY public.in_doc
    ADD CONSTRAINT fk_in_doc_document_1 FOREIGN KEY (doc_id) REFERENCES public.document(id);
 E   ALTER TABLE ONLY public.in_doc DROP CONSTRAINT fk_in_doc_document_1;
       public       postgres    false    219    229    3228         �           2606    27389    in_doc fk_in_doc_inventory_1    FK CONSTRAINT     }   ALTER TABLE ONLY public.in_doc
    ADD CONSTRAINT fk_in_doc_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 F   ALTER TABLE ONLY public.in_doc DROP CONSTRAINT fk_in_doc_inventory_1;
       public       postgres    false    226    229    3242         �           2606    27394 &   in_reserved fk_in_reserved_inventory_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_reserved
    ADD CONSTRAINT fk_in_reserved_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 P   ALTER TABLE ONLY public.in_reserved DROP CONSTRAINT fk_in_reserved_inventory_1;
       public       postgres    false    226    231    3242         �           2606    27399 &   in_reserved fk_in_reserved_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_reserved
    ADD CONSTRAINT fk_in_reserved_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 P   ALTER TABLE ONLY public.in_reserved DROP CONSTRAINT fk_in_reserved_workorder_1;
       public       postgres    false    294    231    3372         �           2606    27404 "   in_stock fk_in_stock_in_location_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_stock
    ADD CONSTRAINT fk_in_stock_in_location_1 FOREIGN KEY (in_id) REFERENCES public.in_location(id);
 L   ALTER TABLE ONLY public.in_stock DROP CONSTRAINT fk_in_stock_in_location_1;
       public       postgres    false    3250    233    230         �           2606    27409     in_stock fk_in_stock_inventory_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_stock
    ADD CONSTRAINT fk_in_stock_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 J   ALTER TABLE ONLY public.in_stock DROP CONSTRAINT fk_in_stock_inventory_1;
       public       postgres    false    3242    226    233         �           2606    27414    in_tran fk_in_tran_costcode_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT fk_in_tran_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);
 G   ALTER TABLE ONLY public.in_tran DROP CONSTRAINT fk_in_tran_costcode_1;
       public       postgres    false    214    234    3218         �           2606    27419     in_tran fk_in_tran_in_location_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT fk_in_tran_in_location_1 FOREIGN KEY (location_id) REFERENCES public.in_location(id);
 J   ALTER TABLE ONLY public.in_tran DROP CONSTRAINT fk_in_tran_in_location_1;
       public       postgres    false    230    234    3250         �           2606    27424    in_tran fk_in_tran_inventory_1    FK CONSTRAINT        ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT fk_in_tran_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 H   ALTER TABLE ONLY public.in_tran DROP CONSTRAINT fk_in_tran_inventory_1;
       public       postgres    false    234    3242    226         �           2606    27429    in_tran fk_in_tran_user_1    FK CONSTRAINT     }   ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT fk_in_tran_user_1 FOREIGN KEY (tran_user_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.in_tran DROP CONSTRAINT fk_in_tran_user_1;
       public       postgres    false    289    234    3362         �           2606    27434 0   in_tran_worksheet fk_in_tran_worksheet_in_tran_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_tran_worksheet
    ADD CONSTRAINT fk_in_tran_worksheet_in_tran_1 FOREIGN KEY (in_tran_id) REFERENCES public.in_tran(id);
 Z   ALTER TABLE ONLY public.in_tran_worksheet DROP CONSTRAINT fk_in_tran_worksheet_in_tran_1;
       public       postgres    false    3256    234    235         �           2606    27439 "   in_vendor fk_in_vendor_inventory_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_vendor
    ADD CONSTRAINT fk_in_vendor_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 L   ALTER TABLE ONLY public.in_vendor DROP CONSTRAINT fk_in_vendor_inventory_1;
       public       postgres    false    3242    237    226         �           2606    27444    in_vendor fk_in_vendor_uom_2    FK CONSTRAINT     x   ALTER TABLE ONLY public.in_vendor
    ADD CONSTRAINT fk_in_vendor_uom_2 FOREIGN KEY (uom_id) REFERENCES public.uom(id);
 F   ALTER TABLE ONLY public.in_vendor DROP CONSTRAINT fk_in_vendor_uom_2;
       public       postgres    false    237    3358    287         �           2606    27449    in_vendor fk_in_vendor_vendor_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.in_vendor
    ADD CONSTRAINT fk_in_vendor_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);
 I   ALTER TABLE ONLY public.in_vendor DROP CONSTRAINT fk_in_vendor_vendor_1;
       public       postgres    false    290    237    3364         �           2606    27454 )   ins_citation fk_ins_citation_inspection_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.ins_citation
    ADD CONSTRAINT fk_ins_citation_inspection_1 FOREIGN KEY (inspection_id) REFERENCES public.inspection(id);
 S   ALTER TABLE ONLY public.ins_citation DROP CONSTRAINT fk_ins_citation_inspection_1;
       public       postgres    false    224    225    3238         �           2606    27459 "   inspection fk_inspection_contact_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.inspection
    ADD CONSTRAINT fk_inspection_contact_1 FOREIGN KEY (inspect_contact_id) REFERENCES public.contact(id);
 L   ALTER TABLE ONLY public.inspection DROP CONSTRAINT fk_inspection_contact_1;
       public       postgres    false    224    210    3210         �           2606    27464     inspection fk_inspection_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.inspection
    ADD CONSTRAINT fk_inspection_users_1 FOREIGN KEY (inspect_user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.inspection DROP CONSTRAINT fk_inspection_users_1;
       public       postgres    false    224    289    3362         �           2606    27469 !   inventory fk_inventory_costcode_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT fk_inventory_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);
 K   ALTER TABLE ONLY public.inventory DROP CONSTRAINT fk_inventory_costcode_1;
       public       postgres    false    3218    214    226         �           2606    27474     inventory fk_inventory_in_type_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT fk_inventory_in_type_1 FOREIGN KEY (type_id) REFERENCES public.in_type(id);
 J   ALTER TABLE ONLY public.inventory DROP CONSTRAINT fk_inventory_in_type_1;
       public       postgres    false    236    226    3260         �           2606    27479    inventory fk_inventory_uom_2    FK CONSTRAINT     x   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT fk_inventory_uom_2 FOREIGN KEY (uom_id) REFERENCES public.uom(id);
 F   ALTER TABLE ONLY public.inventory DROP CONSTRAINT fk_inventory_uom_2;
       public       postgres    false    3358    287    226         �           2606    27484    inventory fk_inventory_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT fk_inventory_user_1 FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.inventory DROP CONSTRAINT fk_inventory_user_1;
       public       postgres    false    3362    289    226         �           2606    27489 &   manufacturer fk_manufacturer_contact_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT fk_manufacturer_contact_1 FOREIGN KEY (contact_id) REFERENCES public.contact(id);
 P   ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT fk_manufacturer_contact_1;
       public       postgres    false    238    210    3210         �           2606    27494 #   manufacturer fk_manufacturer_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT fk_manufacturer_user_1 FOREIGN KEY (modified_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT fk_manufacturer_user_1;
       public       postgres    false    3362    289    238         �           2606    27499 #   manufacturer fk_manufacturer_user_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT fk_manufacturer_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT fk_manufacturer_user_2;
       public       postgres    false    289    3362    238         �           2606    27504 4   meter_transaction fk_meter_transaction_asset_meter_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT fk_meter_transaction_asset_meter_1 FOREIGN KEY (meter_id) REFERENCES public.asset_meter(id);
 ^   ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT fk_meter_transaction_asset_meter_1;
       public       postgres    false    3196    202    239         �           2606    27509 2   meter_transaction fk_meter_transaction_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT fk_meter_transaction_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 \   ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT fk_meter_transaction_workorder_1;
       public       postgres    false    3372    294    239         �           2606    27514 !   meter_transaction fk_meter_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT fk_meter_user_1 FOREIGN KEY (created_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT fk_meter_user_1;
       public       postgres    false    289    3362    239         �           2606    27519 !   meter_transaction fk_meter_user_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT fk_meter_user_2 FOREIGN KEY (read_by_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT fk_meter_user_2;
       public       postgres    false    239    3362    289         �           2606    27554    pm_asset fk_pm_asset_asset_1    FK CONSTRAINT     |   ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT fk_pm_asset_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 F   ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT fk_pm_asset_asset_1;
       public       postgres    false    242    197    3186         �           2606    27559    pm_asset fk_pm_asset_costcode_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT fk_pm_asset_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);
 I   ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT fk_pm_asset_costcode_1;
       public       postgres    false    242    3218    214         �           2606    27564    pm_asset fk_pm_asset_dept_1    FK CONSTRAINT     y   ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT fk_pm_asset_dept_1 FOREIGN KEY (dept_id) REFERENCES public.dept(id);
 E   ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT fk_pm_asset_dept_1;
       public       postgres    false    218    242    3226         �           2606    27569    pm_asset fk_pm_asset_pm_1    FK CONSTRAINT     s   ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT fk_pm_asset_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 C   ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT fk_pm_asset_pm_1;
       public       postgres    false    241    242    3270         �           2606    27534    pm fk_pm_asset_type_1    FK CONSTRAINT        ALTER TABLE ONLY public.pm
    ADD CONSTRAINT fk_pm_asset_type_1 FOREIGN KEY (asset_type_id) REFERENCES public.asset_type(id);
 ?   ALTER TABLE ONLY public.pm DROP CONSTRAINT fk_pm_asset_type_1;
       public       postgres    false    206    241    3202         �           2606    27574    pm_audit fk_pm_audit_pm_1    FK CONSTRAINT     s   ALTER TABLE ONLY public.pm_audit
    ADD CONSTRAINT fk_pm_audit_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 C   ALTER TABLE ONLY public.pm_audit DROP CONSTRAINT fk_pm_audit_pm_1;
       public       postgres    false    241    243    3270         �           2606    27579    pm_audit fk_pm_audit_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.pm_audit
    ADD CONSTRAINT fk_pm_audit_user_1 FOREIGN KEY (audit_user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.pm_audit DROP CONSTRAINT fk_pm_audit_user_1;
       public       postgres    false    243    289    3362         �           2606    27584    pm_comment fk_pm_comment_pm_1    FK CONSTRAINT     w   ALTER TABLE ONLY public.pm_comment
    ADD CONSTRAINT fk_pm_comment_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 G   ALTER TABLE ONLY public.pm_comment DROP CONSTRAINT fk_pm_comment_pm_1;
       public       postgres    false    244    241    3270         �           2606    27589 #   pm_dependency fk_pm_dependency_pm_1    FK CONSTRAINT     }   ALTER TABLE ONLY public.pm_dependency
    ADD CONSTRAINT fk_pm_dependency_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 M   ALTER TABLE ONLY public.pm_dependency DROP CONSTRAINT fk_pm_dependency_pm_1;
       public       postgres    false    3270    245    241         �           2606    27594    pm_doc fk_pm_doc_document_1    FK CONSTRAINT     |   ALTER TABLE ONLY public.pm_doc
    ADD CONSTRAINT fk_pm_doc_document_1 FOREIGN KEY (doc_id) REFERENCES public.document(id);
 E   ALTER TABLE ONLY public.pm_doc DROP CONSTRAINT fk_pm_doc_document_1;
       public       postgres    false    219    246    3228         �           2606    27599    pm_doc fk_pm_doc_pm_1    FK CONSTRAINT     o   ALTER TABLE ONLY public.pm_doc
    ADD CONSTRAINT fk_pm_doc_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 ?   ALTER TABLE ONLY public.pm_doc DROP CONSTRAINT fk_pm_doc_pm_1;
       public       postgres    false    3270    246    241         �           2606    27604    pm_downtime fk_pm_downtime_pm_1    FK CONSTRAINT     y   ALTER TABLE ONLY public.pm_downtime
    ADD CONSTRAINT fk_pm_downtime_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 I   ALTER TABLE ONLY public.pm_downtime DROP CONSTRAINT fk_pm_downtime_pm_1;
       public       postgres    false    247    241    3270         �           2606    27609    pm_labor fk_pm_labor_craft_1    FK CONSTRAINT     |   ALTER TABLE ONLY public.pm_labor
    ADD CONSTRAINT fk_pm_labor_craft_1 FOREIGN KEY (craft_id) REFERENCES public.craft(id);
 F   ALTER TABLE ONLY public.pm_labor DROP CONSTRAINT fk_pm_labor_craft_1;
       public       postgres    false    3220    248    215         �           2606    27614    pm_labor fk_pm_labor_pm_1    FK CONSTRAINT     s   ALTER TABLE ONLY public.pm_labor
    ADD CONSTRAINT fk_pm_labor_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 C   ALTER TABLE ONLY public.pm_labor DROP CONSTRAINT fk_pm_labor_pm_1;
       public       postgres    false    241    248    3270         �           2606    27619    pm_meter fk_pm_meter_asset    FK CONSTRAINT     �   ALTER TABLE ONLY public.pm_meter
    ADD CONSTRAINT fk_pm_meter_asset FOREIGN KEY (meter_id) REFERENCES public.asset_meter(id);
 D   ALTER TABLE ONLY public.pm_meter DROP CONSTRAINT fk_pm_meter_asset;
       public       postgres    false    202    249    3196         �           2606    27624    pm_meter fk_pm_meter_pm_asset_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.pm_meter
    ADD CONSTRAINT fk_pm_meter_pm_asset_1 FOREIGN KEY (pm_asset_id) REFERENCES public.pm_asset(id);
 I   ALTER TABLE ONLY public.pm_meter DROP CONSTRAINT fk_pm_meter_pm_asset_1;
       public       postgres    false    249    3272    242         �           2606    27629    pm_part fk_pm_part_inventory    FK CONSTRAINT     }   ALTER TABLE ONLY public.pm_part
    ADD CONSTRAINT fk_pm_part_inventory FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 F   ALTER TABLE ONLY public.pm_part DROP CONSTRAINT fk_pm_part_inventory;
       public       postgres    false    226    3242    250         �           2606    27634    pm_part fk_pm_part_pm_1    FK CONSTRAINT     q   ALTER TABLE ONLY public.pm_part
    ADD CONSTRAINT fk_pm_part_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 A   ALTER TABLE ONLY public.pm_part DROP CONSTRAINT fk_pm_part_pm_1;
       public       postgres    false    241    250    3270         �           2606    27539    pm fk_pm_rcm_action_1    FK CONSTRAINT        ALTER TABLE ONLY public.pm
    ADD CONSTRAINT fk_pm_rcm_action_1 FOREIGN KEY (rcm_action_id) REFERENCES public.rcm_action(id);
 ?   ALTER TABLE ONLY public.pm DROP CONSTRAINT fk_pm_rcm_action_1;
       public       postgres    false    262    241    3310         �           2606    27639    pm_safety fk_pm_safety_pm_1    FK CONSTRAINT     u   ALTER TABLE ONLY public.pm_safety
    ADD CONSTRAINT fk_pm_safety_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 E   ALTER TABLE ONLY public.pm_safety DROP CONSTRAINT fk_pm_safety_pm_1;
       public       postgres    false    3270    251    241         �           2606    27644 !   pm_season fk_pm_season_pm_asset_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.pm_season
    ADD CONSTRAINT fk_pm_season_pm_asset_1 FOREIGN KEY (pm_asset_id) REFERENCES public.pm_asset(id);
 K   ALTER TABLE ONLY public.pm_season DROP CONSTRAINT fk_pm_season_pm_asset_1;
       public       postgres    false    252    242    3272         �           2606    27649    pm_step fk_pm_step_pm_1    FK CONSTRAINT     q   ALTER TABLE ONLY public.pm_step
    ADD CONSTRAINT fk_pm_step_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 A   ALTER TABLE ONLY public.pm_step DROP CONSTRAINT fk_pm_step_pm_1;
       public       postgres    false    241    3270    253         �           2606    27544    pm fk_pm_team_1    FK CONSTRAINT     v   ALTER TABLE ONLY public.pm
    ADD CONSTRAINT fk_pm_team_1 FOREIGN KEY (assigned_team_id) REFERENCES public.team(id);
 9   ALTER TABLE ONLY public.pm DROP CONSTRAINT fk_pm_team_1;
       public       postgres    false    241    281    3346         �           2606    27654    pm_tool fk_pm_tool_inventory_1    FK CONSTRAINT        ALTER TABLE ONLY public.pm_tool
    ADD CONSTRAINT fk_pm_tool_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 H   ALTER TABLE ONLY public.pm_tool DROP CONSTRAINT fk_pm_tool_inventory_1;
       public       postgres    false    226    254    3242         �           2606    27659    pm_tool fk_pm_tool_pm_1    FK CONSTRAINT     q   ALTER TABLE ONLY public.pm_tool
    ADD CONSTRAINT fk_pm_tool_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 A   ALTER TABLE ONLY public.pm_tool DROP CONSTRAINT fk_pm_tool_pm_1;
       public       postgres    false    3270    241    254         �           2606    27549    pm fk_pm_users_1    FK CONSTRAINT     v   ALTER TABLE ONLY public.pm
    ADD CONSTRAINT fk_pm_users_1 FOREIGN KEY (origin_user_id) REFERENCES public.users(id);
 :   ALTER TABLE ONLY public.pm DROP CONSTRAINT fk_pm_users_1;
       public       postgres    false    241    289    3362         �           2606    27679    po_item fk_po_item_inventory_1    FK CONSTRAINT        ALTER TABLE ONLY public.po_item
    ADD CONSTRAINT fk_po_item_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 H   ALTER TABLE ONLY public.po_item DROP CONSTRAINT fk_po_item_inventory_1;
       public       postgres    false    226    257    3242         �           2606    27684    po_item fk_po_item_po_1    FK CONSTRAINT     q   ALTER TABLE ONLY public.po_item
    ADD CONSTRAINT fk_po_item_po_1 FOREIGN KEY (po_id) REFERENCES public.po(id);
 A   ALTER TABLE ONLY public.po_item DROP CONSTRAINT fk_po_item_po_1;
       public       postgres    false    3298    255    257         �           2606    27689    po_item fk_po_item_uom_2    FK CONSTRAINT     t   ALTER TABLE ONLY public.po_item
    ADD CONSTRAINT fk_po_item_uom_2 FOREIGN KEY (uom_id) REFERENCES public.uom(id);
 B   ALTER TABLE ONLY public.po_item DROP CONSTRAINT fk_po_item_uom_2;
       public       postgres    false    287    257    3358         �           2606    27694 #   po_status_log fk_po_status_log_po_1    FK CONSTRAINT     }   ALTER TABLE ONLY public.po_status_log
    ADD CONSTRAINT fk_po_status_log_po_1 FOREIGN KEY (po_id) REFERENCES public.po(id);
 M   ALTER TABLE ONLY public.po_status_log DROP CONSTRAINT fk_po_status_log_po_1;
       public       postgres    false    255    259    3298         �           2606    27699 &   po_status_log fk_po_status_log_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.po_status_log
    ADD CONSTRAINT fk_po_status_log_users_1 FOREIGN KEY (changed_by_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.po_status_log DROP CONSTRAINT fk_po_status_log_users_1;
       public       postgres    false    259    3362    289         �           2606    27664    po fk_po_user_1    FK CONSTRAINT     o   ALTER TABLE ONLY public.po
    ADD CONSTRAINT fk_po_user_1 FOREIGN KEY (buyer_id) REFERENCES public.users(id);
 9   ALTER TABLE ONLY public.po DROP CONSTRAINT fk_po_user_1;
       public       postgres    false    3362    289    255         �           2606    27669    po fk_po_user_2    FK CONSTRAINT     s   ALTER TABLE ONLY public.po
    ADD CONSTRAINT fk_po_user_2 FOREIGN KEY (next_user_id) REFERENCES public.users(id);
 9   ALTER TABLE ONLY public.po DROP CONSTRAINT fk_po_user_2;
       public       postgres    false    289    255    3362         �           2606    27674    po fk_po_vendor_1    FK CONSTRAINT     s   ALTER TABLE ONLY public.po
    ADD CONSTRAINT fk_po_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);
 ;   ALTER TABLE ONLY public.po DROP CONSTRAINT fk_po_vendor_1;
       public       postgres    false    290    3364    255         �           2606    27704    project fk_project_costcode_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.project
    ADD CONSTRAINT fk_project_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);
 G   ALTER TABLE ONLY public.project DROP CONSTRAINT fk_project_costcode_1;
       public       postgres    false    260    3218    214         �           2606    27709    project fk_project_dept_1    FK CONSTRAINT     w   ALTER TABLE ONLY public.project
    ADD CONSTRAINT fk_project_dept_1 FOREIGN KEY (dept_id) REFERENCES public.dept(id);
 C   ALTER TABLE ONLY public.project DROP CONSTRAINT fk_project_dept_1;
       public       postgres    false    260    3226    218         �           2606    27714 !   project fk_project_project_type_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.project
    ADD CONSTRAINT fk_project_project_type_1 FOREIGN KEY (type_id) REFERENCES public.project_type(id);
 K   ALTER TABLE ONLY public.project DROP CONSTRAINT fk_project_project_type_1;
       public       postgres    false    261    3308    260         �           2606    27719    project fk_project_users_2    FK CONSTRAINT        ALTER TABLE ONLY public.project
    ADD CONSTRAINT fk_project_users_2 FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.project DROP CONSTRAINT fk_project_users_2;
       public       postgres    false    260    289    3362         �           2606    27729 .   rcm_action_part fk_rcm_action_part_inventory_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.rcm_action_part
    ADD CONSTRAINT fk_rcm_action_part_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 X   ALTER TABLE ONLY public.rcm_action_part DROP CONSTRAINT fk_rcm_action_part_inventory_1;
       public       postgres    false    263    226    3242         �           2606    27734 /   rcm_action_part fk_rcm_action_part_rcm_action_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.rcm_action_part
    ADD CONSTRAINT fk_rcm_action_part_rcm_action_1 FOREIGN KEY (action_id) REFERENCES public.rcm_action(id);
 Y   ALTER TABLE ONLY public.rcm_action_part DROP CONSTRAINT fk_rcm_action_part_rcm_action_1;
       public       postgres    false    3310    262    263         �           2606    27724 &   rcm_action fk_rcm_action_rcm_failure_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.rcm_action
    ADD CONSTRAINT fk_rcm_action_rcm_failure_1 FOREIGN KEY (failure_id) REFERENCES public.rcm_failure(id);
 P   ALTER TABLE ONLY public.rcm_action DROP CONSTRAINT fk_rcm_action_rcm_failure_1;
       public       postgres    false    3316    262    265         �           2606    27739 0   rcm_consequence fk_rcm_consequence_rcm_failure_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.rcm_consequence
    ADD CONSTRAINT fk_rcm_consequence_rcm_failure_1 FOREIGN KEY (failure_id) REFERENCES public.rcm_failure(id);
 Z   ALTER TABLE ONLY public.rcm_consequence DROP CONSTRAINT fk_rcm_consequence_rcm_failure_1;
       public       postgres    false    3316    265    264         �           2606    27744 )   rcm_failure fk_rcm_failure_rcm_function_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.rcm_failure
    ADD CONSTRAINT fk_rcm_failure_rcm_function_1 FOREIGN KEY (function_id) REFERENCES public.rcm_function(id);
 S   ALTER TABLE ONLY public.rcm_failure DROP CONSTRAINT fk_rcm_failure_rcm_function_1;
       public       postgres    false    3318    266    265         �           2606    27749 )   rcm_failure fk_rcm_failure_rcm_template_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.rcm_failure
    ADD CONSTRAINT fk_rcm_failure_rcm_template_1 FOREIGN KEY (template_id) REFERENCES public.rcm_template(id);
 S   ALTER TABLE ONLY public.rcm_failure DROP CONSTRAINT fk_rcm_failure_rcm_template_1;
       public       postgres    false    3320    267    265         �           2606    27754 +   rcm_function fk_rcm_function_rcm_template_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.rcm_function
    ADD CONSTRAINT fk_rcm_function_rcm_template_1 FOREIGN KEY (template_id) REFERENCES public.rcm_template(id);
 U   ALTER TABLE ONLY public.rcm_function DROP CONSTRAINT fk_rcm_function_rcm_template_1;
       public       postgres    false    3320    267    266         �           2606    27759     req_item fk_req_item_inventory_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 J   ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_inventory_1;
       public       postgres    false    226    270    3242         �           2606    27764    req_item fk_req_item_po_1    FK CONSTRAINT     s   ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_po_1 FOREIGN KEY (po_id) REFERENCES public.po(id);
 C   ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_po_1;
       public       postgres    false    255    270    3298         �           2606    27769 "   req_item fk_req_item_requisition_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_requisition_1 FOREIGN KEY (req_id) REFERENCES public.requisition(id);
 L   ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_requisition_1;
       public       postgres    false    3324    270    269         �           2606    27774    req_item fk_req_item_uom_1    FK CONSTRAINT     v   ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_uom_1 FOREIGN KEY (uom_id) REFERENCES public.uom(id);
 D   ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_uom_1;
       public       postgres    false    287    270    3358         �           2606    27779    req_item fk_req_item_vendor_1    FK CONSTRAINT        ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);
 G   ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_vendor_1;
       public       postgres    false    290    3364    270         �           2606    27789 .   req_status_log fk_req_status_log_requisition_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.req_status_log
    ADD CONSTRAINT fk_req_status_log_requisition_1 FOREIGN KEY (req_id) REFERENCES public.requisition(id);
 X   ALTER TABLE ONLY public.req_status_log DROP CONSTRAINT fk_req_status_log_requisition_1;
       public       postgres    false    269    3324    272         �           2606    27794 %   requisition fk_requisition_costcode_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_costcode_2 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);
 O   ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_costcode_2;
       public       postgres    false    269    214    3218         �           2606    27799 !   requisition fk_requisition_dept_2    FK CONSTRAINT        ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_dept_2 FOREIGN KEY (dept_id) REFERENCES public.dept(id);
 K   ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_dept_2;
       public       postgres    false    218    3226    269         �           2606    27804 "   requisition fk_requisition_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_users_1 FOREIGN KEY (request_user_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_users_1;
       public       postgres    false    289    3362    269         �           2606    27809 "   requisition fk_requisition_users_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_users_2 FOREIGN KEY (next_user_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_users_2;
       public       postgres    false    3362    269    289         �           2606    27814    requisition fk_requisition_wo_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_wo_2 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 I   ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_wo_2;
       public       postgres    false    294    3372    269         �           2606    27819     sched_user fk_sched_user_users_2    FK CONSTRAINT        ALTER TABLE ONLY public.sched_user
    ADD CONSTRAINT fk_sched_user_users_2 FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.sched_user DROP CONSTRAINT fk_sched_user_users_2;
       public       postgres    false    289    277    3362         �           2606    27829 6   scheduler_job_log fk_scheduler_job_log_scheduler_job_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.scheduler_job_log
    ADD CONSTRAINT fk_scheduler_job_log_scheduler_job_1 FOREIGN KEY (job_id) REFERENCES public.scheduler_job(id);
 `   ALTER TABLE ONLY public.scheduler_job_log DROP CONSTRAINT fk_scheduler_job_log_scheduler_job_1;
       public       postgres    false    273    274    3330         �           2606    27834 6   scheduler_job_log fk_scheduler_job_log_scheduler_job_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.scheduler_job_log
    ADD CONSTRAINT fk_scheduler_job_log_scheduler_job_2 FOREIGN KEY (job_id) REFERENCES public.scheduler_job(id);
 `   ALTER TABLE ONLY public.scheduler_job_log DROP CONSTRAINT fk_scheduler_job_log_scheduler_job_2;
       public       postgres    false    274    273    3330         �           2606    27824 /   scheduler_job fk_scheduler_job_scheduler_task_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.scheduler_job
    ADD CONSTRAINT fk_scheduler_job_scheduler_task_1 FOREIGN KEY (task_id) REFERENCES public.scheduler_task(id);
 Y   ALTER TABLE ONLY public.scheduler_job DROP CONSTRAINT fk_scheduler_job_scheduler_task_1;
       public       postgres    false    3334    273    275         �           2606    27839    tax_rate fk_tax_rate_tax_code_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT fk_tax_rate_tax_code_1 FOREIGN KEY (tax_code_id) REFERENCES public.tax_code(id);
 I   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT fk_tax_rate_tax_code_1;
       public       postgres    false    280    279    3342         �           2606    27844    training fk_training_contact_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.training
    ADD CONSTRAINT fk_training_contact_2 FOREIGN KEY (instructor_contact_id) REFERENCES public.contact(id);
 H   ALTER TABLE ONLY public.training DROP CONSTRAINT fk_training_contact_2;
       public       postgres    false    3210    210    282         �           2606    27864 9   training_course fk_training_course_training_course_type_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.training_course
    ADD CONSTRAINT fk_training_course_training_course_type_1 FOREIGN KEY (type_id) REFERENCES public.training_course_type(id);
 c   ALTER TABLE ONLY public.training_course DROP CONSTRAINT fk_training_course_training_course_type_1;
       public       postgres    false    3354    285    284         �           2606    27849 +   training fk_training_training_certificate_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.training
    ADD CONSTRAINT fk_training_training_certificate_1 FOREIGN KEY (certificate_id) REFERENCES public.training_certificate(id);
 U   ALTER TABLE ONLY public.training DROP CONSTRAINT fk_training_training_certificate_1;
       public       postgres    false    282    3350    283         �           2606    27854 &   training fk_training_training_course_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.training
    ADD CONSTRAINT fk_training_training_course_1 FOREIGN KEY (course_id) REFERENCES public.training_course(id);
 P   ALTER TABLE ONLY public.training DROP CONSTRAINT fk_training_training_course_1;
       public       postgres    false    284    282    3352         �           2606    27869 )   training_user fk_training_user_training_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.training_user
    ADD CONSTRAINT fk_training_user_training_1 FOREIGN KEY (training_id) REFERENCES public.training(id);
 S   ALTER TABLE ONLY public.training_user DROP CONSTRAINT fk_training_user_training_1;
       public       postgres    false    3348    286    282         �           2606    27874 &   training_user fk_training_user_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.training_user
    ADD CONSTRAINT fk_training_user_users_1 FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.training_user DROP CONSTRAINT fk_training_user_users_1;
       public       postgres    false    289    286    3362         �           2606    27859    training fk_training_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.training
    ADD CONSTRAINT fk_training_users_1 FOREIGN KEY (instructor_user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.training DROP CONSTRAINT fk_training_users_1;
       public       postgres    false    289    282    3362         �           2606    27879    uom_map fk_uom_map_uom_1    FK CONSTRAINT     x   ALTER TABLE ONLY public.uom_map
    ADD CONSTRAINT fk_uom_map_uom_1 FOREIGN KEY (uom_src_id) REFERENCES public.uom(id);
 B   ALTER TABLE ONLY public.uom_map DROP CONSTRAINT fk_uom_map_uom_1;
       public       postgres    false    3358    288    287         �           2606    27884    uom_map fk_uom_map_uom_2    FK CONSTRAINT     x   ALTER TABLE ONLY public.uom_map
    ADD CONSTRAINT fk_uom_map_uom_2 FOREIGN KEY (uom_dst_id) REFERENCES public.uom(id);
 B   ALTER TABLE ONLY public.uom_map DROP CONSTRAINT fk_uom_map_uom_2;
       public       postgres    false    3358    288    287         �           2606    27889    users fk_users_acl    FK CONSTRAINT     z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_acl FOREIGN KEY (acl_group_id) REFERENCES public.acl_group(id);
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_acl;
       public       postgres    false    289    196    3184         �           2606    27894    users fk_users_costcode    FK CONSTRAINT     }   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_costcode FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_costcode;
       public       postgres    false    214    3218    289         �           2606    27899    users fk_users_craft    FK CONSTRAINT     t   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_craft FOREIGN KEY (craft_id) REFERENCES public.craft(id);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_craft;
       public       postgres    false    215    3220    289         �           2606    27904    users fk_users_dept_2    FK CONSTRAINT     s   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_dept_2 FOREIGN KEY (dept_id) REFERENCES public.dept(id);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_dept_2;
       public       postgres    false    218    3226    289         �           2606    27909    users fk_users_team    FK CONSTRAINT     q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_team FOREIGN KEY (team_id) REFERENCES public.team(id);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_team;
       public       postgres    false    281    3346    289         �           2606    27929    vendor_contact fk_vc_contact    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendor_contact
    ADD CONSTRAINT fk_vc_contact FOREIGN KEY (contact_id) REFERENCES public.contact(id);
 F   ALTER TABLE ONLY public.vendor_contact DROP CONSTRAINT fk_vc_contact;
       public       postgres    false    210    291    3210         �           2606    27914    vendor fk_vendor_contact    FK CONSTRAINT     |   ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT fk_vendor_contact FOREIGN KEY (contact_id) REFERENCES public.contact(id);
 B   ALTER TABLE ONLY public.vendor DROP CONSTRAINT fk_vendor_contact;
       public       postgres    false    210    3210    290         �           2606    27934 )   vendor_contact fk_vendor_contact_vendor_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendor_contact
    ADD CONSTRAINT fk_vendor_contact_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);
 S   ALTER TABLE ONLY public.vendor_contact DROP CONSTRAINT fk_vendor_contact_vendor_1;
       public       postgres    false    290    3364    291         �           2606    27919    vendor fk_vendor_task    FK CONSTRAINT     {   ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT fk_vendor_task FOREIGN KEY (tax_code_id) REFERENCES public.tax_code(id);
 ?   ALTER TABLE ONLY public.vendor DROP CONSTRAINT fk_vendor_task;
       public       postgres    false    279    290    3342         �           2606    27924    vendor fk_vendor_user    FK CONSTRAINT     z   ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT fk_vendor_user FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.vendor DROP CONSTRAINT fk_vendor_user;
       public       postgres    false    290    289    3362         �           2606    28059    workorder fk_wo_at    FK CONSTRAINT     y   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_at FOREIGN KEY (assigned_team_id) REFERENCES public.team(id);
 <   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_at;
       public       postgres    false    3346    294    281                    2606    27939 *   wo_attachment fk_wo_attachment_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_attachment
    ADD CONSTRAINT fk_wo_attachment_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 T   ALTER TABLE ONLY public.wo_attachment DROP CONSTRAINT fk_wo_attachment_workorder_1;
       public       postgres    false    294    295    3372         	           2606    27944 $   wo_comment fk_wo_comment_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_comment
    ADD CONSTRAINT fk_wo_comment_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 N   ALTER TABLE ONLY public.wo_comment DROP CONSTRAINT fk_wo_comment_workorder_1;
       public       postgres    false    294    296    3372         �           2606    28064    workorder fk_wo_costcode    FK CONSTRAINT     ~   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_costcode FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);
 B   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_costcode;
       public       postgres    false    214    3218    294         �           2606    28069    workorder fk_wo_dept    FK CONSTRAINT     r   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_dept FOREIGN KEY (dept_id) REFERENCES public.dept(id);
 >   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_dept;
       public       postgres    false    218    294    3226         
           2606    27949    wo_doc fk_wo_doc_document    FK CONSTRAINT     z   ALTER TABLE ONLY public.wo_doc
    ADD CONSTRAINT fk_wo_doc_document FOREIGN KEY (doc_id) REFERENCES public.document(id);
 C   ALTER TABLE ONLY public.wo_doc DROP CONSTRAINT fk_wo_doc_document;
       public       postgres    false    3228    297    219                    2606    27954    wo_doc fk_wo_doc_workorder_1    FK CONSTRAINT     }   ALTER TABLE ONLY public.wo_doc
    ADD CONSTRAINT fk_wo_doc_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 F   ALTER TABLE ONLY public.wo_doc DROP CONSTRAINT fk_wo_doc_workorder_1;
       public       postgres    false    297    3372    294                    2606    27959    wo_labor fk_wo_labor_craft    FK CONSTRAINT     z   ALTER TABLE ONLY public.wo_labor
    ADD CONSTRAINT fk_wo_labor_craft FOREIGN KEY (craft_id) REFERENCES public.craft(id);
 D   ALTER TABLE ONLY public.wo_labor DROP CONSTRAINT fk_wo_labor_craft;
       public       postgres    false    299    3220    215                    2606    27964    wo_labor fk_wo_labor_user    FK CONSTRAINT     x   ALTER TABLE ONLY public.wo_labor
    ADD CONSTRAINT fk_wo_labor_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.wo_labor DROP CONSTRAINT fk_wo_labor_user;
       public       postgres    false    3362    299    289                    2606    27969     wo_labor fk_wo_labor_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_labor
    ADD CONSTRAINT fk_wo_labor_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 J   ALTER TABLE ONLY public.wo_labor DROP CONSTRAINT fk_wo_labor_workorder_1;
       public       postgres    false    3372    294    299                    2606    27974     wo_meter fk_wo_meter_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_meter
    ADD CONSTRAINT fk_wo_meter_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 J   ALTER TABLE ONLY public.wo_meter DROP CONSTRAINT fk_wo_meter_workorder_1;
       public       postgres    false    3372    300    294         �           2606    28074    workorder fk_wo_oc    FK CONSTRAINT     {   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_oc FOREIGN KEY (orig_contact_id) REFERENCES public.contact(id);
 <   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_oc;
       public       postgres    false    294    3210    210                     2606    28079    workorder fk_wo_ou_1    FK CONSTRAINT     x   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_ou_1 FOREIGN KEY (orig_user_id) REFERENCES public.users(id);
 >   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_ou_1;
       public       postgres    false    289    3362    294                    2606    28084    workorder fk_wo_ou_2    FK CONSTRAINT     z   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_ou_2 FOREIGN KEY (assigned_to_id) REFERENCES public.users(id);
 >   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_ou_2;
       public       postgres    false    289    3362    294                    2606    28089    workorder fk_wo_ou_3    FK CONSTRAINT     z   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_ou_3 FOREIGN KEY (assigned_by_id) REFERENCES public.users(id);
 >   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_ou_3;
       public       postgres    false    3362    289    294                    2606    27979    wo_part fk_wo_part_inventory    FK CONSTRAINT     }   ALTER TABLE ONLY public.wo_part
    ADD CONSTRAINT fk_wo_part_inventory FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 F   ALTER TABLE ONLY public.wo_part DROP CONSTRAINT fk_wo_part_inventory;
       public       postgres    false    226    301    3242                    2606    27984    wo_part fk_wo_part_workorder_1    FK CONSTRAINT        ALTER TABLE ONLY public.wo_part
    ADD CONSTRAINT fk_wo_part_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 H   ALTER TABLE ONLY public.wo_part DROP CONSTRAINT fk_wo_part_workorder_1;
       public       postgres    false    301    3372    294                    2606    27989 6   wo_planned_downtime fk_wo_planned_downtime_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_planned_downtime
    ADD CONSTRAINT fk_wo_planned_downtime_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 `   ALTER TABLE ONLY public.wo_planned_downtime DROP CONSTRAINT fk_wo_planned_downtime_workorder_1;
       public       postgres    false    3372    302    294                    2606    27994 0   wo_planned_labor fk_wo_planned_labor_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_planned_labor
    ADD CONSTRAINT fk_wo_planned_labor_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 Z   ALTER TABLE ONLY public.wo_planned_labor DROP CONSTRAINT fk_wo_planned_labor_workorder_1;
       public       postgres    false    3372    303    294                    2606    28004 .   wo_planned_part fk_wo_planned_part_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_planned_part
    ADD CONSTRAINT fk_wo_planned_part_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 X   ALTER TABLE ONLY public.wo_planned_part DROP CONSTRAINT fk_wo_planned_part_workorder_1;
       public       postgres    false    304    3372    294                    2606    28014 .   wo_planned_tool fk_wo_planned_tool_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_planned_tool
    ADD CONSTRAINT fk_wo_planned_tool_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 X   ALTER TABLE ONLY public.wo_planned_tool DROP CONSTRAINT fk_wo_planned_tool_workorder_1;
       public       postgres    false    3372    305    294                    2606    28094    workorder fk_wo_pm    FK CONSTRAINT     l   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_pm FOREIGN KEY (pm_id) REFERENCES public.pm(id);
 <   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_pm;
       public       postgres    false    3270    294    241                    2606    28099    workorder fk_wo_project    FK CONSTRAINT     {   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_project FOREIGN KEY (project_id) REFERENCES public.project(id);
 A   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_project;
       public       postgres    false    3306    260    294                    2606    28104    workorder fk_wo_rcm_action    FK CONSTRAINT     �   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_rcm_action FOREIGN KEY (rcm_action_id) REFERENCES public.rcm_action(id);
 D   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_rcm_action;
       public       postgres    false    3310    294    262                    2606    28019 "   wo_safety fk_wo_safety_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_safety
    ADD CONSTRAINT fk_wo_safety_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 L   ALTER TABLE ONLY public.wo_safety DROP CONSTRAINT fk_wo_safety_workorder_1;
       public       postgres    false    3372    306    294                    2606    28024 ,   wo_sched_labor fk_wo_sched_labor_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_sched_labor
    ADD CONSTRAINT fk_wo_sched_labor_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 V   ALTER TABLE ONLY public.wo_sched_labor DROP CONSTRAINT fk_wo_sched_labor_workorder_1;
       public       postgres    false    294    307    3372                    2606    28034 *   wo_status_log fk_wo_status_log_workorder_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_status_log
    ADD CONSTRAINT fk_wo_status_log_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 T   ALTER TABLE ONLY public.wo_status_log DROP CONSTRAINT fk_wo_status_log_workorder_1;
       public       postgres    false    294    310    3372                    2606    28044    wo_step fk_wo_step_workorder_1    FK CONSTRAINT        ALTER TABLE ONLY public.wo_step
    ADD CONSTRAINT fk_wo_step_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 H   ALTER TABLE ONLY public.wo_step DROP CONSTRAINT fk_wo_step_workorder_1;
       public       postgres    false    3372    311    294                    2606    28049    wo_tool fk_wo_tool_inv    FK CONSTRAINT     w   ALTER TABLE ONLY public.wo_tool
    ADD CONSTRAINT fk_wo_tool_inv FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 @   ALTER TABLE ONLY public.wo_tool DROP CONSTRAINT fk_wo_tool_inv;
       public       postgres    false    226    312    3242                    2606    28054    wo_tool fk_wo_tool_workorder_1    FK CONSTRAINT        ALTER TABLE ONLY public.wo_tool
    ADD CONSTRAINT fk_wo_tool_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);
 H   ALTER TABLE ONLY public.wo_tool DROP CONSTRAINT fk_wo_tool_workorder_1;
       public       postgres    false    312    3372    294                    2606    27999    wo_planned_labor fk_wopl_craft    FK CONSTRAINT     ~   ALTER TABLE ONLY public.wo_planned_labor
    ADD CONSTRAINT fk_wopl_craft FOREIGN KEY (craft_id) REFERENCES public.craft(id);
 H   ALTER TABLE ONLY public.wo_planned_labor DROP CONSTRAINT fk_wopl_craft;
       public       postgres    false    3220    215    303                    2606    28009 !   wo_planned_part fk_wopp_inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_planned_part
    ADD CONSTRAINT fk_wopp_inventory FOREIGN KEY (in_id) REFERENCES public.inventory(id);
 K   ALTER TABLE ONLY public.wo_planned_part DROP CONSTRAINT fk_wopp_inventory;
       public       postgres    false    3242    226    304                    2606    28109    workorder fk_workorder_asset_1    FK CONSTRAINT     ~   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_workorder_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);
 H   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_workorder_asset_1;
       public       postgres    false    197    3186    294                    2606    28114    workorder fk_workorder_team_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_workorder_team_1 FOREIGN KEY (assigned_team_id) REFERENCES public.team(id);
 G   ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_workorder_team_1;
       public       postgres    false    281    294    3346                    2606    28029    wo_sched_labor fk_wosl_user    FK CONSTRAINT     z   ALTER TABLE ONLY public.wo_sched_labor
    ADD CONSTRAINT fk_wosl_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.wo_sched_labor DROP CONSTRAINT fk_wosl_user;
       public       postgres    false    3362    289    307                    2606    28039    wo_status_log fk_wosl_user_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.wo_status_log
    ADD CONSTRAINT fk_wosl_user_2 FOREIGN KEY (changed_by_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.wo_status_log DROP CONSTRAINT fk_wosl_user_2;
       public       postgres    false    289    3362    310                                                                                                                                                                                                                                                                                                                                           3737.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3738.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3739.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3740.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3741.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3742.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3743.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3744.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3745.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3746.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3747.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3748.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3749.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3750.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3751.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3752.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3753.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3754.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3755.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3756.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3757.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3758.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3759.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3761.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3762.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3763.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3760.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3764.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3768.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3769.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3770.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3771.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3772.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3773.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3774.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3775.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3776.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3777.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3778.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3766.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3765.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3767.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3779.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3780.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3781.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3782.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3783.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3784.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3785.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3786.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3787.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3788.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3789.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3790.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3791.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3792.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3793.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3794.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3795.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3796.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3797.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3798.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3799.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3800.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3801.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3802.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3803.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3804.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3805.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3806.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3807.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3808.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3809.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3811.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3812.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3813.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3810.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3817.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3818.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3814.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3815.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3816.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3819.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3820.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3821.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3822.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3823.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3824.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3825.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3826.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3827.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3828.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3829.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3830.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3831.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3832.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3833.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3834.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3836.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3837.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3838.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3839.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3840.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3841.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3842.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3843.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3844.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3845.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3846.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3847.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3848.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3849.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3850.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3851.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3852.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3853.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3835.dat                                                                                            0000600 0004000 0002000 00000000005 13337314274 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000642041 13337314274 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.wo_status_log DROP CONSTRAINT fk_wosl_user_2;
ALTER TABLE ONLY public.wo_sched_labor DROP CONSTRAINT fk_wosl_user;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_workorder_team_1;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_workorder_asset_1;
ALTER TABLE ONLY public.wo_planned_part DROP CONSTRAINT fk_wopp_inventory;
ALTER TABLE ONLY public.wo_planned_labor DROP CONSTRAINT fk_wopl_craft;
ALTER TABLE ONLY public.wo_tool DROP CONSTRAINT fk_wo_tool_workorder_1;
ALTER TABLE ONLY public.wo_tool DROP CONSTRAINT fk_wo_tool_inv;
ALTER TABLE ONLY public.wo_step DROP CONSTRAINT fk_wo_step_workorder_1;
ALTER TABLE ONLY public.wo_status_log DROP CONSTRAINT fk_wo_status_log_workorder_1;
ALTER TABLE ONLY public.wo_sched_labor DROP CONSTRAINT fk_wo_sched_labor_workorder_1;
ALTER TABLE ONLY public.wo_safety DROP CONSTRAINT fk_wo_safety_workorder_1;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_rcm_action;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_project;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_pm;
ALTER TABLE ONLY public.wo_planned_tool DROP CONSTRAINT fk_wo_planned_tool_workorder_1;
ALTER TABLE ONLY public.wo_planned_part DROP CONSTRAINT fk_wo_planned_part_workorder_1;
ALTER TABLE ONLY public.wo_planned_labor DROP CONSTRAINT fk_wo_planned_labor_workorder_1;
ALTER TABLE ONLY public.wo_planned_downtime DROP CONSTRAINT fk_wo_planned_downtime_workorder_1;
ALTER TABLE ONLY public.wo_part DROP CONSTRAINT fk_wo_part_workorder_1;
ALTER TABLE ONLY public.wo_part DROP CONSTRAINT fk_wo_part_inventory;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_ou_3;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_ou_2;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_ou_1;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_oc;
ALTER TABLE ONLY public.wo_meter DROP CONSTRAINT fk_wo_meter_workorder_1;
ALTER TABLE ONLY public.wo_labor DROP CONSTRAINT fk_wo_labor_workorder_1;
ALTER TABLE ONLY public.wo_labor DROP CONSTRAINT fk_wo_labor_user;
ALTER TABLE ONLY public.wo_labor DROP CONSTRAINT fk_wo_labor_craft;
ALTER TABLE ONLY public.wo_doc DROP CONSTRAINT fk_wo_doc_workorder_1;
ALTER TABLE ONLY public.wo_doc DROP CONSTRAINT fk_wo_doc_document;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_dept;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_costcode;
ALTER TABLE ONLY public.wo_comment DROP CONSTRAINT fk_wo_comment_workorder_1;
ALTER TABLE ONLY public.wo_attachment DROP CONSTRAINT fk_wo_attachment_workorder_1;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT fk_wo_at;
ALTER TABLE ONLY public.vendor DROP CONSTRAINT fk_vendor_user;
ALTER TABLE ONLY public.vendor DROP CONSTRAINT fk_vendor_task;
ALTER TABLE ONLY public.vendor_contact DROP CONSTRAINT fk_vendor_contact_vendor_1;
ALTER TABLE ONLY public.vendor DROP CONSTRAINT fk_vendor_contact;
ALTER TABLE ONLY public.vendor_contact DROP CONSTRAINT fk_vc_contact;
ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_team;
ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_dept_2;
ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_craft;
ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_costcode;
ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_acl;
ALTER TABLE ONLY public.uom_map DROP CONSTRAINT fk_uom_map_uom_2;
ALTER TABLE ONLY public.uom_map DROP CONSTRAINT fk_uom_map_uom_1;
ALTER TABLE ONLY public.training DROP CONSTRAINT fk_training_users_1;
ALTER TABLE ONLY public.training_user DROP CONSTRAINT fk_training_user_users_1;
ALTER TABLE ONLY public.training_user DROP CONSTRAINT fk_training_user_training_1;
ALTER TABLE ONLY public.training DROP CONSTRAINT fk_training_training_course_1;
ALTER TABLE ONLY public.training DROP CONSTRAINT fk_training_training_certificate_1;
ALTER TABLE ONLY public.training_course DROP CONSTRAINT fk_training_course_training_course_type_1;
ALTER TABLE ONLY public.training DROP CONSTRAINT fk_training_contact_2;
ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT fk_tax_rate_tax_code_1;
ALTER TABLE ONLY public.scheduler_job DROP CONSTRAINT fk_scheduler_job_scheduler_task_1;
ALTER TABLE ONLY public.scheduler_job_log DROP CONSTRAINT fk_scheduler_job_log_scheduler_job_2;
ALTER TABLE ONLY public.scheduler_job_log DROP CONSTRAINT fk_scheduler_job_log_scheduler_job_1;
ALTER TABLE ONLY public.sched_user DROP CONSTRAINT fk_sched_user_users_2;
ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_wo_2;
ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_users_2;
ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_users_1;
ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_dept_2;
ALTER TABLE ONLY public.requisition DROP CONSTRAINT fk_requisition_costcode_2;
ALTER TABLE ONLY public.req_status_log DROP CONSTRAINT fk_req_status_log_requisition_1;
ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_vendor_1;
ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_uom_1;
ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_requisition_1;
ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_po_1;
ALTER TABLE ONLY public.req_item DROP CONSTRAINT fk_req_item_inventory_1;
ALTER TABLE ONLY public.rcm_function DROP CONSTRAINT fk_rcm_function_rcm_template_1;
ALTER TABLE ONLY public.rcm_failure DROP CONSTRAINT fk_rcm_failure_rcm_template_1;
ALTER TABLE ONLY public.rcm_failure DROP CONSTRAINT fk_rcm_failure_rcm_function_1;
ALTER TABLE ONLY public.rcm_consequence DROP CONSTRAINT fk_rcm_consequence_rcm_failure_1;
ALTER TABLE ONLY public.rcm_action DROP CONSTRAINT fk_rcm_action_rcm_failure_1;
ALTER TABLE ONLY public.rcm_action_part DROP CONSTRAINT fk_rcm_action_part_rcm_action_1;
ALTER TABLE ONLY public.rcm_action_part DROP CONSTRAINT fk_rcm_action_part_inventory_1;
ALTER TABLE ONLY public.project DROP CONSTRAINT fk_project_users_2;
ALTER TABLE ONLY public.project DROP CONSTRAINT fk_project_project_type_1;
ALTER TABLE ONLY public.project DROP CONSTRAINT fk_project_dept_1;
ALTER TABLE ONLY public.project DROP CONSTRAINT fk_project_costcode_1;
ALTER TABLE ONLY public.po DROP CONSTRAINT fk_po_vendor_1;
ALTER TABLE ONLY public.po DROP CONSTRAINT fk_po_user_2;
ALTER TABLE ONLY public.po DROP CONSTRAINT fk_po_user_1;
ALTER TABLE ONLY public.po_status_log DROP CONSTRAINT fk_po_status_log_users_1;
ALTER TABLE ONLY public.po_status_log DROP CONSTRAINT fk_po_status_log_po_1;
ALTER TABLE ONLY public.po_item DROP CONSTRAINT fk_po_item_uom_2;
ALTER TABLE ONLY public.po_item DROP CONSTRAINT fk_po_item_po_1;
ALTER TABLE ONLY public.po_item DROP CONSTRAINT fk_po_item_inventory_1;
ALTER TABLE ONLY public.pm DROP CONSTRAINT fk_pm_users_1;
ALTER TABLE ONLY public.pm_tool DROP CONSTRAINT fk_pm_tool_pm_1;
ALTER TABLE ONLY public.pm_tool DROP CONSTRAINT fk_pm_tool_inventory_1;
ALTER TABLE ONLY public.pm DROP CONSTRAINT fk_pm_team_1;
ALTER TABLE ONLY public.pm_step DROP CONSTRAINT fk_pm_step_pm_1;
ALTER TABLE ONLY public.pm_season DROP CONSTRAINT fk_pm_season_pm_asset_1;
ALTER TABLE ONLY public.pm_safety DROP CONSTRAINT fk_pm_safety_pm_1;
ALTER TABLE ONLY public.pm DROP CONSTRAINT fk_pm_rcm_action_1;
ALTER TABLE ONLY public.pm_part DROP CONSTRAINT fk_pm_part_pm_1;
ALTER TABLE ONLY public.pm_part DROP CONSTRAINT fk_pm_part_inventory;
ALTER TABLE ONLY public.pm_meter DROP CONSTRAINT fk_pm_meter_pm_asset_1;
ALTER TABLE ONLY public.pm_meter DROP CONSTRAINT fk_pm_meter_asset;
ALTER TABLE ONLY public.pm_labor DROP CONSTRAINT fk_pm_labor_pm_1;
ALTER TABLE ONLY public.pm_labor DROP CONSTRAINT fk_pm_labor_craft_1;
ALTER TABLE ONLY public.pm_downtime DROP CONSTRAINT fk_pm_downtime_pm_1;
ALTER TABLE ONLY public.pm_doc DROP CONSTRAINT fk_pm_doc_pm_1;
ALTER TABLE ONLY public.pm_doc DROP CONSTRAINT fk_pm_doc_document_1;
ALTER TABLE ONLY public.pm_dependency DROP CONSTRAINT fk_pm_dependency_pm_1;
ALTER TABLE ONLY public.pm_comment DROP CONSTRAINT fk_pm_comment_pm_1;
ALTER TABLE ONLY public.pm_audit DROP CONSTRAINT fk_pm_audit_user_1;
ALTER TABLE ONLY public.pm_audit DROP CONSTRAINT fk_pm_audit_pm_1;
ALTER TABLE ONLY public.pm DROP CONSTRAINT fk_pm_asset_type_1;
ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT fk_pm_asset_pm_1;
ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT fk_pm_asset_dept_1;
ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT fk_pm_asset_costcode_1;
ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT fk_pm_asset_asset_1;
ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT fk_meter_user_2;
ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT fk_meter_user_1;
ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT fk_meter_transaction_workorder_1;
ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT fk_meter_transaction_asset_meter_1;
ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT fk_manufacturer_user_2;
ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT fk_manufacturer_user_1;
ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT fk_manufacturer_contact_1;
ALTER TABLE ONLY public.inventory DROP CONSTRAINT fk_inventory_user_1;
ALTER TABLE ONLY public.inventory DROP CONSTRAINT fk_inventory_uom_2;
ALTER TABLE ONLY public.inventory DROP CONSTRAINT fk_inventory_in_type_1;
ALTER TABLE ONLY public.inventory DROP CONSTRAINT fk_inventory_costcode_1;
ALTER TABLE ONLY public.inspection DROP CONSTRAINT fk_inspection_users_1;
ALTER TABLE ONLY public.inspection DROP CONSTRAINT fk_inspection_contact_1;
ALTER TABLE ONLY public.ins_citation DROP CONSTRAINT fk_ins_citation_inspection_1;
ALTER TABLE ONLY public.in_vendor DROP CONSTRAINT fk_in_vendor_vendor_1;
ALTER TABLE ONLY public.in_vendor DROP CONSTRAINT fk_in_vendor_uom_2;
ALTER TABLE ONLY public.in_vendor DROP CONSTRAINT fk_in_vendor_inventory_1;
ALTER TABLE ONLY public.in_tran_worksheet DROP CONSTRAINT fk_in_tran_worksheet_in_tran_1;
ALTER TABLE ONLY public.in_tran DROP CONSTRAINT fk_in_tran_user_1;
ALTER TABLE ONLY public.in_tran DROP CONSTRAINT fk_in_tran_inventory_1;
ALTER TABLE ONLY public.in_tran DROP CONSTRAINT fk_in_tran_in_location_1;
ALTER TABLE ONLY public.in_tran DROP CONSTRAINT fk_in_tran_costcode_1;
ALTER TABLE ONLY public.in_stock DROP CONSTRAINT fk_in_stock_inventory_1;
ALTER TABLE ONLY public.in_stock DROP CONSTRAINT fk_in_stock_in_location_1;
ALTER TABLE ONLY public.in_reserved DROP CONSTRAINT fk_in_reserved_workorder_1;
ALTER TABLE ONLY public.in_reserved DROP CONSTRAINT fk_in_reserved_inventory_1;
ALTER TABLE ONLY public.in_doc DROP CONSTRAINT fk_in_doc_inventory_1;
ALTER TABLE ONLY public.in_doc DROP CONSTRAINT fk_in_doc_document_1;
ALTER TABLE ONLY public.in_comment DROP CONSTRAINT fk_in_comment_inventory_1;
ALTER TABLE ONLY public.in_audit DROP CONSTRAINT fk_in_audit_user_1;
ALTER TABLE ONLY public.in_audit DROP CONSTRAINT fk_in_audit_inventory_1;
ALTER TABLE ONLY public.document DROP CONSTRAINT fk_document_doc_type_1;
ALTER TABLE ONLY public.doc_attachment DROP CONSTRAINT fk_doc_attachment_document_2;
ALTER TABLE ONLY public.doc_attachment DROP CONSTRAINT fk_doc_attachment_doc_upload_2;
ALTER TABLE ONLY public.costcode DROP CONSTRAINT fk_costcode_dept_1;
ALTER TABLE ONLY public.contract DROP CONSTRAINT fk_contract_vendor_1;
ALTER TABLE ONLY public.contract DROP CONSTRAINT fk_contract_user_1;
ALTER TABLE ONLY public.contract_doc DROP CONSTRAINT fk_contract_doc_document_1;
ALTER TABLE ONLY public.contract_doc DROP CONSTRAINT fk_contract_doc_contract_1;
ALTER TABLE ONLY public.contract_contact DROP CONSTRAINT fk_contract_contact_contract_1;
ALTER TABLE ONLY public.contract_contact DROP CONSTRAINT fk_contract_contact_contact_1;
ALTER TABLE ONLY public.contract DROP CONSTRAINT fk_contract_contact_1;
ALTER TABLE ONLY public.req_status_log DROP CONSTRAINT fk_changed_by;
ALTER TABLE ONLY public.budget_status_log DROP CONSTRAINT fk_budget_status_log_budget_1;
ALTER TABLE ONLY public.budget DROP CONSTRAINT fk_budget_budget_title_1;
ALTER TABLE ONLY public.asset_type DROP CONSTRAINT fk_at_user_2;
ALTER TABLE ONLY public.asset_type DROP CONSTRAINT fk_at_user;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_vendor_1;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_users_2;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_users_1;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_user_3;
ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_uom_4;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_uom_1;
ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asset_service_log_asset_1;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_rcm_template_1;
ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_user_2;
ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_user_1;
ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_uom_1;
ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_inventory_1;
ALTER TABLE ONLY public.asset_part DROP CONSTRAINT fk_asset_part_asset_1;
ALTER TABLE ONLY public.asset_depreciation DROP CONSTRAINT fk_asset_modified;
ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT fk_asset_modif_1;
ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT fk_asset_modif;
ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_meter_user_2;
ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_meter_user_1;
ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_meter_meter_type_1;
ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT fk_asset_meter_asset_1;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_manufacturer_1;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_inventory_1;
ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk_asset_downtime_wo_1;
ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk_asset_downtime_asset_1;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_document_1;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_dept_1;
ALTER TABLE ONLY public.asset_depreciation DROP CONSTRAINT fk_asset_depreciation_asset_1;
ALTER TABLE ONLY public.asset_depreciation DROP CONSTRAINT fk_asset_create;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_costcode_1;
ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT fk_asset_contract_contract_1;
ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT fk_asset_contract_asset_1;
ALTER TABLE ONLY public.asset_comment DROP CONSTRAINT fk_asset_comment_user_2;
ALTER TABLE ONLY public.asset_comment DROP CONSTRAINT fk_asset_comment_user_1;
ALTER TABLE ONLY public.asset_comment DROP CONSTRAINT fk_asset_comment_asset_1;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_asset_type_1;
ALTER TABLE ONLY public.asset DROP CONSTRAINT fk_asset_asset_loc_1;
ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_user_3;
ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_user_2;
ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_user_1;
ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_asset_2;
ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT fk_asl_asset;
ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk3;
ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk2;
ALTER TABLE ONLY public.meter_type DROP CONSTRAINT fk12;
ALTER TABLE ONLY public.meter_type DROP CONSTRAINT fk11;
ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT fk1;
ALTER TABLE ONLY public.workorder DROP CONSTRAINT workorder_pkey;
ALTER TABLE ONLY public.wo_tool DROP CONSTRAINT wo_tool_pkey;
ALTER TABLE ONLY public.wo_step DROP CONSTRAINT wo_step_pkey;
ALTER TABLE ONLY public.wo_status_log DROP CONSTRAINT wo_status_log_pkey;
ALTER TABLE ONLY public.wo_semaphore DROP CONSTRAINT wo_semaphore_pkey;
ALTER TABLE ONLY public.wo_sched_labor DROP CONSTRAINT wo_sched_labor_pkey;
ALTER TABLE ONLY public.wo_safety DROP CONSTRAINT wo_safety_pkey;
ALTER TABLE ONLY public.wo_planned_tool DROP CONSTRAINT wo_planned_tool_pkey;
ALTER TABLE ONLY public.wo_planned_part DROP CONSTRAINT wo_planned_part_pkey;
ALTER TABLE ONLY public.wo_planned_labor DROP CONSTRAINT wo_planned_labor_pkey;
ALTER TABLE ONLY public.wo_planned_downtime DROP CONSTRAINT wo_planned_downtime_pkey;
ALTER TABLE ONLY public.wo_part DROP CONSTRAINT wo_part_pkey;
ALTER TABLE ONLY public.wo_meter DROP CONSTRAINT wo_meter_pkey;
ALTER TABLE ONLY public.wo_labor DROP CONSTRAINT wo_labor_pkey;
ALTER TABLE ONLY public.wo_generation DROP CONSTRAINT wo_generation_pkey;
ALTER TABLE ONLY public.wo_doc DROP CONSTRAINT wo_doc_pkey;
ALTER TABLE ONLY public.wo_comment DROP CONSTRAINT wo_comment_pkey;
ALTER TABLE ONLY public.wo_attachment DROP CONSTRAINT wo_attachment_pkey;
ALTER TABLE ONLY public.version_upgrade_log DROP CONSTRAINT version_upgrade_log_pkey;
ALTER TABLE ONLY public.version DROP CONSTRAINT version_pkey;
ALTER TABLE ONLY public.vendor DROP CONSTRAINT vendor_pkey;
ALTER TABLE ONLY public.vendor_contact DROP CONSTRAINT vendor_contact_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.uom DROP CONSTRAINT uom_pkey;
ALTER TABLE ONLY public.uom_map DROP CONSTRAINT uom_map_pkey;
ALTER TABLE ONLY public.training_user DROP CONSTRAINT training_user_pkey;
ALTER TABLE ONLY public.training DROP CONSTRAINT training_pkey;
ALTER TABLE ONLY public.training_course_type DROP CONSTRAINT training_course_type_pkey;
ALTER TABLE ONLY public.training_course DROP CONSTRAINT training_course_pkey;
ALTER TABLE ONLY public.training_certificate DROP CONSTRAINT training_certificate_pkey;
ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT tax_rate_pkey;
ALTER TABLE ONLY public.tax_code DROP CONSTRAINT tax_code_pkey;
ALTER TABLE ONLY public.semaphore DROP CONSTRAINT semaphore_pkey;
ALTER TABLE ONLY public.scheduler_task DROP CONSTRAINT scheduler_task_pkey;
ALTER TABLE ONLY public.scheduler_job DROP CONSTRAINT scheduler_job_pkey;
ALTER TABLE ONLY public.scheduler_job_log DROP CONSTRAINT scheduler_job_log_pkey;
ALTER TABLE ONLY public.sched_user DROP CONSTRAINT sched_user_pkey;
ALTER TABLE ONLY public.sched_shutdown DROP CONSTRAINT sched_shutdown_pkey;
ALTER TABLE ONLY public.requisition DROP CONSTRAINT requisition_pkey;
ALTER TABLE ONLY public.req_status_log DROP CONSTRAINT req_status_log_pkey;
ALTER TABLE ONLY public.req_item DROP CONSTRAINT req_item_pkey;
ALTER TABLE ONLY public.recycle_bin DROP CONSTRAINT recycle_bin_pkey;
ALTER TABLE ONLY public.rcm_template DROP CONSTRAINT rcm_template_pkey;
ALTER TABLE ONLY public.rcm_function DROP CONSTRAINT rcm_function_pkey;
ALTER TABLE ONLY public.rcm_failure DROP CONSTRAINT rcm_failure_pkey;
ALTER TABLE ONLY public.rcm_consequence DROP CONSTRAINT rcm_consequence_pkey;
ALTER TABLE ONLY public.rcm_action DROP CONSTRAINT rcm_action_pkey;
ALTER TABLE ONLY public.rcm_action_part DROP CONSTRAINT rcm_action_part_pkey;
ALTER TABLE ONLY public.project_type DROP CONSTRAINT project_type_pkey;
ALTER TABLE ONLY public.project DROP CONSTRAINT project_pkey;
ALTER TABLE ONLY public.po_status_log DROP CONSTRAINT po_status_log_pkey;
ALTER TABLE ONLY public.po DROP CONSTRAINT po_pkey;
ALTER TABLE ONLY public.po_item DROP CONSTRAINT po_item_pkey;
ALTER TABLE ONLY public.po_address DROP CONSTRAINT po_address_pkey;
ALTER TABLE ONLY public.pm_tool DROP CONSTRAINT pm_tool_pkey;
ALTER TABLE ONLY public.pm_step DROP CONSTRAINT pm_step_pkey;
ALTER TABLE ONLY public.pm_season DROP CONSTRAINT pm_season_pkey;
ALTER TABLE ONLY public.pm_safety DROP CONSTRAINT pm_safety_pkey;
ALTER TABLE ONLY public.pm DROP CONSTRAINT pm_pkey;
ALTER TABLE ONLY public.pm_part DROP CONSTRAINT pm_part_pkey;
ALTER TABLE ONLY public.pm_meter DROP CONSTRAINT pm_meter_pkey;
ALTER TABLE ONLY public.pm_labor DROP CONSTRAINT pm_labor_pkey;
ALTER TABLE ONLY public.pm_downtime DROP CONSTRAINT pm_downtime_pkey;
ALTER TABLE ONLY public.pm_doc DROP CONSTRAINT pm_doc_pkey;
ALTER TABLE ONLY public.pm_dependency DROP CONSTRAINT pm_dependency_pkey;
ALTER TABLE ONLY public.pm_comment DROP CONSTRAINT pm_comment_pkey;
ALTER TABLE ONLY public.pm_audit DROP CONSTRAINT pm_audit_pkey;
ALTER TABLE ONLY public.pm_asset DROP CONSTRAINT pm_asset_pkey;
ALTER TABLE ONLY public.meter_type DROP CONSTRAINT meter_type_pkey;
ALTER TABLE ONLY public.meter_transaction DROP CONSTRAINT meter_transaction_pkey;
ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT manufacturer_pkey;
ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
ALTER TABLE ONLY public.inspection DROP CONSTRAINT inspection_pkey;
ALTER TABLE ONLY public.ins_citation DROP CONSTRAINT ins_citation_pkey;
ALTER TABLE ONLY public.in_vendor DROP CONSTRAINT in_vendor_pkey;
ALTER TABLE ONLY public.in_type DROP CONSTRAINT in_type_pkey;
ALTER TABLE ONLY public.in_tran_worksheet DROP CONSTRAINT in_tran_worksheet_pkey;
ALTER TABLE ONLY public.in_tran DROP CONSTRAINT in_tran_pkey;
ALTER TABLE ONLY public.in_stock DROP CONSTRAINT in_stock_pkey;
ALTER TABLE ONLY public.in_reserved DROP CONSTRAINT in_reserved_pkey;
ALTER TABLE ONLY public.in_location DROP CONSTRAINT in_location_pkey;
ALTER TABLE ONLY public.in_doc DROP CONSTRAINT in_doc_pkey;
ALTER TABLE ONLY public.in_comment DROP CONSTRAINT in_comment_pkey;
ALTER TABLE ONLY public.in_audit DROP CONSTRAINT in_audit_pkey;
ALTER TABLE ONLY public.downtime_unit_cost DROP CONSTRAINT downtime_unit_cost_pkey;
ALTER TABLE ONLY public.document DROP CONSTRAINT document_pkey;
ALTER TABLE ONLY public.doc_upload DROP CONSTRAINT doc_upload_pkey;
ALTER TABLE ONLY public.doc_type DROP CONSTRAINT doc_type_pkey;
ALTER TABLE ONLY public.doc_attachment DROP CONSTRAINT doc_attachment_pkey;
ALTER TABLE ONLY public.dept DROP CONSTRAINT dept_pkey;
ALTER TABLE ONLY public.dash_wo_orig_md DROP CONSTRAINT dash_wo_orig_md_pkey;
ALTER TABLE ONLY public.dash_wo_orig_day DROP CONSTRAINT dash_wo_orig_day_pkey;
ALTER TABLE ONLY public.craft DROP CONSTRAINT craft_pkey;
ALTER TABLE ONLY public.costcode DROP CONSTRAINT costcode_pkey;
ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_pkey;
ALTER TABLE ONLY public.contract_doc DROP CONSTRAINT contract_doc_pkey;
ALTER TABLE ONLY public.contract_contact DROP CONSTRAINT contract_contact_pkey;
ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
ALTER TABLE ONLY public.budget_title DROP CONSTRAINT budget_title_pkey;
ALTER TABLE ONLY public.budget_status_log DROP CONSTRAINT budget_status_log_pkey;
ALTER TABLE ONLY public.budget DROP CONSTRAINT budget_pkey;
ALTER TABLE ONLY public.asset_type DROP CONSTRAINT asset_type_pkey;
ALTER TABLE ONLY public.asset_service_log DROP CONSTRAINT asset_service_log_pkey;
ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_pkey;
ALTER TABLE ONLY public.asset_part DROP CONSTRAINT asset_part_pkey;
ALTER TABLE ONLY public.asset_meter DROP CONSTRAINT asset_meter_pkey;
ALTER TABLE ONLY public.asset_downtime DROP CONSTRAINT asset_downtime_pkey;
ALTER TABLE ONLY public.asset_depreciation DROP CONSTRAINT asset_depreciation_pkey;
ALTER TABLE ONLY public.asset_contract DROP CONSTRAINT asset_contract_pkey;
ALTER TABLE ONLY public.asset_comment DROP CONSTRAINT asset_comment_pkey;
ALTER TABLE ONLY public.acl_group DROP CONSTRAINT acl_group_pkey;
DROP TABLE public.workorder;
DROP TABLE public.wo_tool;
DROP TABLE public.wo_step;
DROP TABLE public.wo_status_log;
DROP TABLE public.wo_seq;
DROP TABLE public.wo_semaphore;
DROP TABLE public.wo_sched_labor;
DROP TABLE public.wo_safety;
DROP TABLE public.wo_planned_tool;
DROP TABLE public.wo_planned_part;
DROP TABLE public.wo_planned_labor;
DROP TABLE public.wo_planned_downtime;
DROP TABLE public.wo_part;
DROP TABLE public.wo_meter;
DROP TABLE public.wo_labor;
DROP TABLE public.wo_generation;
DROP TABLE public.wo_doc;
DROP TABLE public.wo_comment;
DROP TABLE public.wo_attachment;
DROP TABLE public.version_upgrade_log;
DROP TABLE public.version;
DROP TABLE public.vendor_contact;
DROP TABLE public.vendor;
DROP TABLE public.users;
DROP TABLE public.uom_map;
DROP TABLE public.uom;
DROP TABLE public.training_user;
DROP TABLE public.training_course_type;
DROP TABLE public.training_course;
DROP TABLE public.training_certificate;
DROP TABLE public.training;
DROP TABLE public.team;
DROP TABLE public.tax_rate;
DROP TABLE public.tax_code;
DROP TABLE public.semaphore;
DROP TABLE public.scheduler_task;
DROP TABLE public.scheduler_job_log;
DROP TABLE public.scheduler_job;
DROP TABLE public.sched_user;
DROP TABLE public.sched_shutdown;
DROP TABLE public.requisition;
DROP TABLE public.req_status_log;
DROP TABLE public.req_seq;
DROP TABLE public.req_item;
DROP TABLE public.recycle_bin;
DROP TABLE public.rcm_template;
DROP TABLE public.rcm_function;
DROP TABLE public.rcm_failure;
DROP TABLE public.rcm_consequence;
DROP TABLE public.rcm_action_part;
DROP TABLE public.rcm_action;
DROP TABLE public.project_type;
DROP TABLE public.project;
DROP TABLE public.po_status_log;
DROP TABLE public.po_seq;
DROP TABLE public.po_item;
DROP TABLE public.po_address;
DROP TABLE public.po;
DROP TABLE public.pm_tool;
DROP TABLE public.pm_step;
DROP TABLE public.pm_season;
DROP TABLE public.pm_safety;
DROP TABLE public.pm_part;
DROP TABLE public.pm_meter;
DROP TABLE public.pm_labor;
DROP TABLE public.pm_downtime;
DROP TABLE public.pm_doc;
DROP TABLE public.pm_dependency;
DROP TABLE public.pm_comment;
DROP TABLE public.pm_audit;
DROP TABLE public.pm_asset;
DROP TABLE public.pm;
DROP TABLE public.meter_type;
DROP TABLE public.meter_transaction;
DROP TABLE public.manufacturer;
DROP TABLE public.inventory;
DROP TABLE public.inspection;
DROP TABLE public.ins_citation;
DROP TABLE public.in_vendor;
DROP TABLE public.in_type;
DROP TABLE public.in_tran_worksheet;
DROP TABLE public.in_tran;
DROP TABLE public.in_stock;
DROP TABLE public.in_seq;
DROP TABLE public.in_reserved;
DROP TABLE public.in_location;
DROP TABLE public.in_doc;
DROP TABLE public.in_comment;
DROP TABLE public.in_audit;
DROP TABLE public.downtime_unit_cost;
DROP TABLE public.document;
DROP TABLE public.doc_upload;
DROP TABLE public.doc_type;
DROP TABLE public.doc_attachment;
DROP TABLE public.dept;
DROP TABLE public.dash_wo_orig_md;
DROP TABLE public.dash_wo_orig_day;
DROP TABLE public.craft;
DROP TABLE public.costcode;
DROP TABLE public.contract_doc;
DROP TABLE public.contract_contact;
DROP TABLE public.contract;
DROP TABLE public.contact;
DROP TABLE public.budget_title;
DROP TABLE public.budget_status_log;
DROP TABLE public.budget;
DROP TABLE public.asset_type;
DROP TABLE public.asset_service_log;
DROP TABLE public.asset_seq;
DROP TABLE public.asset_part;
DROP TABLE public.asset_meter;
DROP TABLE public.asset_downtime;
DROP TABLE public.asset_depreciation;
DROP TABLE public.asset_contract;
DROP TABLE public.asset_comment;
DROP TABLE public.asset;
DROP TABLE public.acl_group;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: acl_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acl_group (
    id character varying(36) NOT NULL,
    acl_group character varying(30),
    parent_group_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.acl_group OWNER TO postgres;

--
-- Name: asset; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset (
    id character varying(36) NOT NULL,
    asset_no character varying(30),
    note character varying(76),
    priority_id character varying(36),
    status_id character varying(36),
    parent_id character varying(36),
    type_id character varying(36),
    template_id character varying(36),
    category_id character varying(36),
    location_id character varying(36),
    weight double precision,
    weight_uom_id character varying(36),
    serial_no character varying(30),
    owner_user_id character varying(36),
    start_date date,
    purchase_date date,
    original_cost double precision,
    manufacturer_id character varying(36),
    vendor_id character varying(36),
    upload_id character varying(36),
    warranty_start_date date,
    warranty_end_date date,
    maint_labor_hours double precision,
    maint_labor_cost double precision,
    maint_material_cost double precision,
    maint_cost double precision,
    rollup_cost smallint,
    costcode_id character varying(36),
    dept_id character varying(36),
    in_id character varying(36),
    depreciation_type_id character varying(36),
    depreciation_start date,
    depreciation_time_id character varying(36),
    depreciation_rate double precision,
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.asset OWNER TO postgres;

--
-- Name: asset_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_comment (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.asset_comment OWNER TO postgres;

--
-- Name: asset_contract; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_contract (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    contract_id character varying(36),
    note character varying(76),
    status_id character varying(36),
    start_date date,
    end_date date,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.asset_contract OWNER TO postgres;

--
-- Name: asset_depreciation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_depreciation (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    start_date date,
    end_date date,
    depreciation_rate double precision,
    start_value double precision,
    end_value double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.asset_depreciation OWNER TO postgres;

--
-- Name: asset_downtime; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_downtime (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    downtime_type_id character varying(36),
    downtime_cause_id character varying(36),
    start_time timestamp without time zone,
    shift_id character varying(36),
    end_time timestamp without time zone,
    hours double precision,
    wo_id character varying(36),
    reported_by_id character varying(36),
    reported_time timestamp without time zone,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.asset_downtime OWNER TO postgres;

--
-- Name: asset_meter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_meter (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    meter_no character varying(30),
    type_id character varying(36),
    reading_uom_id character varying(36),
    reading double precision,
    is_rollover smallint,
    time_taken timestamp without time zone,
    rollup_type_id character varying(36),
    rollover_reading double precision,
    rollover_count integer,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.asset_meter OWNER TO postgres;

--
-- Name: asset_part; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_part (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    in_id character varying(36),
    type_id character varying(36),
    qty double precision,
    uom_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.asset_part OWNER TO postgres;

--
-- Name: asset_seq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_seq (
    id integer
);


ALTER TABLE public.asset_seq OWNER TO postgres;

--
-- Name: asset_service_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_service_log (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    from_status_id character varying(36),
    to_status_id character varying(36),
    from_location_id character varying(36),
    to_location_id character varying(36),
    from_parent_id character varying(36),
    to_parent_id character varying(36),
    from_owner_id character varying(36),
    to_owner_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);


ALTER TABLE public.asset_service_log OWNER TO postgres;

--
-- Name: asset_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.asset_type OWNER TO postgres;

--
-- Name: budget; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.budget (
    id character varying(36) NOT NULL,
    title_id character varying(36),
    budget character varying(30),
    state_id character varying(36),
    start_date date,
    end_date date,
    budgeted double precision,
    app double precision,
    accounting double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.budget OWNER TO postgres;

--
-- Name: budget_status_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.budget_status_log (
    id character varying(36) NOT NULL,
    budget_id character varying(36),
    to_state_id character varying(36),
    from_state_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);


ALTER TABLE public.budget_status_log OWNER TO postgres;

--
-- Name: budget_title; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.budget_title (
    id character varying(36) NOT NULL,
    title character varying(30),
    start_date date,
    end_date date,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.budget_title OWNER TO postgres;

--
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact (
    id character varying(36) NOT NULL,
    full_name character varying(50),
    job_title character varying(30),
    type_id character varying(36),
    note character varying(76),
    phone_work character varying(24),
    phone_home character varying(16),
    phone_mobile character varying(16),
    email_work character varying(50),
    email_other character varying(50),
    im1_type_id character varying(36),
    im1_id character varying(30),
    im2_type_id character varying(36),
    im2_id character varying(30),
    fax character varying(16),
    company character varying(50),
    street1 character varying(50),
    street2 character varying(50),
    city character varying(50),
    state character varying(50),
    zip character varying(16),
    country character varying(50),
    asset_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- Name: contract; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contract (
    id character varying(36) NOT NULL,
    contract character varying(30),
    vendor_id character varying(36),
    note character varying(76),
    type_id character varying(36),
    status_id character varying(36),
    contact_id character varying(36),
    owner_user_id character varying(36),
    start_date date,
    end_date date,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.contract OWNER TO postgres;

--
-- Name: contract_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contract_contact (
    id character varying(36) NOT NULL,
    contract_id character varying(36),
    contact_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.contract_contact OWNER TO postgres;

--
-- Name: contract_doc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contract_doc (
    id character varying(36) NOT NULL,
    contract_id character varying(36),
    seq integer,
    doc_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.contract_doc OWNER TO postgres;

--
-- Name: costcode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.costcode (
    id character varying(36) NOT NULL,
    costcode character varying(30),
    note character varying(76),
    dept_id character varying(36),
    parent_id character varying(36),
    rollup_cost smallint,
    cost_type_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.costcode OWNER TO postgres;

--
-- Name: craft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.craft (
    id character varying(36) NOT NULL,
    craft character varying(30),
    note character varying(76),
    rate double precision,
    ot_factor double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.craft OWNER TO postgres;

--
-- Name: dash_wo_orig_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dash_wo_orig_day (
    id character varying(36) NOT NULL,
    counts character varying(1000),
    modified_time timestamp without time zone
);


ALTER TABLE public.dash_wo_orig_day OWNER TO postgres;

--
-- Name: dash_wo_orig_md; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dash_wo_orig_md (
    id character varying(36) NOT NULL,
    counts character varying(1000),
    modified_time timestamp without time zone
);


ALTER TABLE public.dash_wo_orig_md OWNER TO postgres;

--
-- Name: dept; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept (
    id character varying(36) NOT NULL,
    dept character varying(30),
    note character varying(76),
    manager_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.dept OWNER TO postgres;

--
-- Name: doc_attachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_attachment (
    id character varying(36) NOT NULL,
    doc_id character varying(36),
    upload_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.doc_attachment OWNER TO postgres;

--
-- Name: doc_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.doc_type OWNER TO postgres;

--
-- Name: doc_upload; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doc_upload (
    id character varying(36) NOT NULL,
    file_upload character varying(250),
    access_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.doc_upload OWNER TO postgres;

--
-- Name: document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.document (
    id character varying(36) NOT NULL,
    document character varying(30),
    content text,
    type_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.document OWNER TO postgres;

--
-- Name: downtime_unit_cost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.downtime_unit_cost (
    id character varying(36) NOT NULL,
    asset_id character varying(36),
    downtime_type_id character varying(36),
    hourly_rate double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.downtime_unit_cost OWNER TO postgres;

--
-- Name: in_audit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_audit (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    audit_user_id character varying(36),
    start_date date,
    end_date date,
    hours double precision,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_audit OWNER TO postgres;

--
-- Name: in_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_comment (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_comment OWNER TO postgres;

--
-- Name: in_doc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_doc (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    doc_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_doc OWNER TO postgres;

--
-- Name: in_location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_location (
    id character varying(36) NOT NULL,
    location character varying(30),
    parent_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_location OWNER TO postgres;

--
-- Name: in_reserved; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_reserved (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    wo_id character varying(36),
    qty double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_reserved OWNER TO postgres;

--
-- Name: in_seq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_seq (
    id integer
);


ALTER TABLE public.in_seq OWNER TO postgres;

--
-- Name: in_stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_stock (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    location_id character varying(36),
    qty double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_stock OWNER TO postgres;

--
-- Name: in_tran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_tran (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    type_id character varying(36),
    location_id character varying(36),
    qty double precision,
    unit_cost double precision,
    costcode_id character varying(36),
    checkout_type_id character varying(36),
    checkout_to_id character varying(36),
    receive_type_id character varying(36),
    receive_from_id character varying(36),
    qty_available double precision,
    qty_orig double precision,
    orig_loc_id character varying(36),
    checkout_tran_id character varying(36),
    rent_duration double precision,
    rent_rate double precision,
    tran_total double precision,
    note character varying(76),
    tran_time timestamp without time zone,
    tran_user_id character varying(36),
    store_user_id character varying(36),
    voided smallint,
    authorized_by_id character varying(36),
    void_by_id character varying(36),
    void_time timestamp without time zone,
    void_note character varying(76),
    new_tran_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_tran OWNER TO postgres;

--
-- Name: in_tran_worksheet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_tran_worksheet (
    id character varying(36) NOT NULL,
    in_tran_id character varying(36),
    src_tran_id character varying(36),
    qty double precision,
    unit_cost double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_tran_worksheet OWNER TO postgres;

--
-- Name: in_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_type OWNER TO postgres;

--
-- Name: in_vendor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.in_vendor (
    id character varying(36) NOT NULL,
    in_id character varying(36),
    vendor_id character varying(36),
    vendor_part_no character varying(30),
    is_primary smallint,
    uom_id character varying(36),
    unit_cost double precision,
    lead_time_days double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.in_vendor OWNER TO postgres;

--
-- Name: ins_citation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ins_citation (
    id character varying(36) NOT NULL,
    citation character varying(50),
    inspection_id character varying(36),
    severity_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.ins_citation OWNER TO postgres;

--
-- Name: inspection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inspection (
    id character varying(36) NOT NULL,
    inspection character varying(50),
    type_id character varying(36),
    inspect_contact_id character varying(36),
    inspect_user_id character varying(36),
    owner_user_id character varying(36),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.inspection OWNER TO postgres;

--
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    id character varying(36) NOT NULL,
    in_no character varying(30),
    note character varying(76),
    type_id character varying(36),
    category_id character varying(36),
    stock_type_id character varying(36),
    valuation_type_id character varying(36),
    abc_id character varying(36),
    abc_time timestamp without time zone,
    uom_id character varying(36),
    avg_unit_cost double precision,
    rent_uom_id character varying(36),
    rent_rate double precision,
    qty_in_stock double precision,
    qty_on_order double precision,
    qty_reserved double precision,
    qty_to_order double precision,
    order_gen_id character varying(36),
    order_type_id character varying(36),
    min_level double precision,
    max_level double precision,
    reorder_point double precision,
    reorder_qty double precision,
    owner_user_id character varying(36),
    notification_id character varying(36),
    costcode_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: manufacturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturer (
    id character varying(36) NOT NULL,
    manufacturer character varying(30),
    note character varying(76),
    contact_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.manufacturer OWNER TO postgres;

--
-- Name: meter_transaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meter_transaction (
    id character varying(36) NOT NULL,
    meter_id character varying(36),
    read_by_id character varying(36),
    time_taken timestamp without time zone,
    reading double precision,
    is_rollover smallint,
    wo_id character varying(36),
    note character varying(76),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.meter_transaction OWNER TO postgres;

--
-- Name: meter_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meter_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.meter_type OWNER TO postgres;

--
-- Name: pm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm (
    id character varying(36) NOT NULL,
    pm_no character varying(30),
    description text,
    status_id character varying(36),
    asset_type_id character varying(36),
    rcm_action_id character varying(36),
    category_id character varying(36),
    priority_id character varying(36),
    origin_id character varying(36),
    origin_user_id character varying(36),
    assigned_to_id character varying(36),
    assigned_team_id character varying(36),
    duration_hours double precision,
    release_type_id character varying(36),
    schedule_type_id character varying(36),
    release_schedule character varying(1024),
    labor_hours double precision,
    downtime_hours double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm OWNER TO postgres;

--
-- Name: pm_asset; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_asset (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    asset_id character varying(36),
    last_released date,
    last_closed date,
    next_due_date date,
    release_count integer,
    costcode_id character varying(36),
    dept_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_asset OWNER TO postgres;

--
-- Name: pm_audit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_audit (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    audit_user_id character varying(36),
    start_date date,
    end_date date,
    hours double precision,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_audit OWNER TO postgres;

--
-- Name: pm_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_comment (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_comment OWNER TO postgres;

--
-- Name: pm_dependency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_dependency (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    child_pm_id character varying(36),
    type_id character varying(36),
    scope_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_dependency OWNER TO postgres;

--
-- Name: pm_doc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_doc (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    seq integer,
    doc_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_doc OWNER TO postgres;

--
-- Name: pm_downtime; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_downtime (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    hours double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_downtime OWNER TO postgres;

--
-- Name: pm_labor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_labor (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    craft_id character varying(36),
    hours double precision,
    crew_size integer,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_labor OWNER TO postgres;

--
-- Name: pm_meter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_meter (
    id character varying(36) NOT NULL,
    pm_asset_id character varying(36),
    meter_id character varying(36),
    release_by_meter smallint,
    reading_released double precision,
    rollover_count integer,
    reading_interval double precision,
    copy_to_wo smallint,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_meter OWNER TO postgres;

--
-- Name: pm_part; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_part (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_part OWNER TO postgres;

--
-- Name: pm_safety; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_safety (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    seq integer,
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_safety OWNER TO postgres;

--
-- Name: pm_season; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_season (
    id character varying(36) NOT NULL,
    pm_asset_id character varying(36),
    start_date date,
    end_date date,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_season OWNER TO postgres;

--
-- Name: pm_step; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_step (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    seq integer,
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_step OWNER TO postgres;

--
-- Name: pm_tool; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pm_tool (
    id character varying(36) NOT NULL,
    pm_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.pm_tool OWNER TO postgres;

--
-- Name: po; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.po (
    id character varying(36) NOT NULL,
    po_no character varying(30),
    status_id character varying(36),
    state_id character varying(36),
    buyer_id character varying(36),
    buyer_name character varying(50),
    buyer_phone character varying(24),
    po_date date,
    next_user_id character varying(36),
    next_note character varying(76),
    vendor_id character varying(36),
    vendor_addr character varying(512),
    vendor_contact_id character varying(36),
    vendor_contact_phone character varying(24),
    payment_term_id character varying(36),
    shipping_type_id character varying(36),
    shipping_term_id character varying(36),
    shipping_addr_id character varying(36),
    billing_addr_id character varying(36),
    po_item_total double precision,
    tax_rate_total double precision,
    tax_charge double precision,
    total_charge double precision,
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.po OWNER TO postgres;

--
-- Name: po_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.po_address (
    id character varying(36) NOT NULL,
    address character varying(512),
    type_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.po_address OWNER TO postgres;

--
-- Name: po_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.po_item (
    id character varying(36) NOT NULL,
    line_no integer,
    po_id character varying(36),
    in_id character varying(36),
    vendor_part_no character varying(50),
    note character varying(76),
    unit_cost double precision,
    qty double precision,
    qty_received double precision,
    uom_id character varying(36),
    due_date date,
    line_cost double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.po_item OWNER TO postgres;

--
-- Name: po_seq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.po_seq (
    id integer
);


ALTER TABLE public.po_seq OWNER TO postgres;

--
-- Name: po_status_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.po_status_log (
    id character varying(36) NOT NULL,
    po_id character varying(36),
    from_status_id character varying(36),
    to_status_id character varying(36),
    from_state_id character varying(36),
    to_state_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);


ALTER TABLE public.po_status_log OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    id character varying(36) NOT NULL,
    project_no character varying(30),
    parent_id character varying(36),
    note character varying(76),
    status_id character varying(36),
    priority_id character varying(36),
    type_id character varying(36),
    owner_user_id character varying(36),
    sched_start_time timestamp without time zone,
    sched_end_time timestamp without time zone,
    actual_start_time timestamp without time zone,
    actual_end_time timestamp without time zone,
    sched_hours double precision,
    actual_hours double precision,
    percent_done double precision,
    dept_id character varying(36),
    costcode_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: project_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.project_type OWNER TO postgres;

--
-- Name: rcm_action; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rcm_action (
    id character varying(36) NOT NULL,
    failure_id character varying(36),
    cause character varying(50),
    action character varying(50),
    cause_type_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.rcm_action OWNER TO postgres;

--
-- Name: rcm_action_part; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rcm_action_part (
    id character varying(36) NOT NULL,
    action_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.rcm_action_part OWNER TO postgres;

--
-- Name: rcm_consequence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rcm_consequence (
    id character varying(36) NOT NULL,
    failure_id character varying(36),
    consequence character varying(50),
    type_id character varying(36),
    pm_policy_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.rcm_consequence OWNER TO postgres;

--
-- Name: rcm_failure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rcm_failure (
    id character varying(36) NOT NULL,
    failure character varying(50),
    is_evident smallint,
    function_id character varying(36),
    template_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.rcm_failure OWNER TO postgres;

--
-- Name: rcm_function; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rcm_function (
    id character varying(36) NOT NULL,
    fn_name character varying(50),
    template_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.rcm_function OWNER TO postgres;

--
-- Name: rcm_template; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rcm_template (
    id character varying(36) NOT NULL,
    template character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.rcm_template OWNER TO postgres;

--
-- Name: recycle_bin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recycle_bin (
    id character varying(36) NOT NULL,
    parent_id character varying(36),
    description character varying(256),
    table_name character varying(30),
    rec_id character varying(36),
    value_deleted text,
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.recycle_bin OWNER TO postgres;

--
-- Name: req_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.req_item (
    id character varying(36) NOT NULL,
    req_id character varying(36),
    in_id character varying(36),
    vendor_id character varying(36),
    vendor_part_no character varying(50),
    unit_cost double precision,
    qty double precision,
    uom_id character varying(36),
    line_cost double precision,
    po_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.req_item OWNER TO postgres;

--
-- Name: req_seq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.req_seq (
    id integer
);


ALTER TABLE public.req_seq OWNER TO postgres;

--
-- Name: req_status_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.req_status_log (
    id character varying(36) NOT NULL,
    req_id character varying(36),
    from_status_id character varying(36),
    to_status_id character varying(36),
    from_state_id character varying(36),
    to_state_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);


ALTER TABLE public.req_status_log OWNER TO postgres;

--
-- Name: requisition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.requisition (
    id character varying(36) NOT NULL,
    req_no character varying(30),
    description text,
    priority_id character varying(36),
    status_id character varying(36),
    req_on_po_id character varying(36),
    source_id character varying(36),
    state_id character varying(36),
    due_date date,
    shipping_type_id character varying(36),
    wo_id character varying(36),
    request_user_id character varying(36),
    request_time timestamp without time zone,
    req_total double precision,
    costcode_id character varying(36),
    dept_id character varying(36),
    next_user_id character varying(36),
    next_note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.requisition OWNER TO postgres;

--
-- Name: sched_shutdown; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sched_shutdown (
    id character varying(36) NOT NULL,
    shutdown character varying(30),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    hours double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.sched_shutdown OWNER TO postgres;

--
-- Name: sched_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sched_user (
    id character varying(36) NOT NULL,
    user_id character varying(36),
    sched_date date,
    shift_id character varying(36),
    total_hours double precision,
    sched_hours double precision,
    hours_sched double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.sched_user OWNER TO postgres;

--
-- Name: scheduler_job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scheduler_job (
    id character varying(36) NOT NULL,
    task_id character varying(36),
    note character varying(76),
    is_active smallint,
    start_seq integer DEFAULT 0,
    release_time character varying(512),
    release_day character varying(1024),
    time_due timestamp without time zone,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.scheduler_job OWNER TO postgres;

--
-- Name: scheduler_job_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scheduler_job_log (
    id character varying(36) NOT NULL,
    job_id character varying(36),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    time_taken double precision,
    results text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.scheduler_job_log OWNER TO postgres;

--
-- Name: scheduler_task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scheduler_task (
    id character varying(36) NOT NULL,
    task character varying(30),
    note character varying(76),
    class_name character varying(76),
    class_path character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.scheduler_task OWNER TO postgres;

--
-- Name: semaphore; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.semaphore (
    id character varying(36) NOT NULL,
    expire_time timestamp without time zone,
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.semaphore OWNER TO postgres;

--
-- Name: tax_code; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tax_code (
    id character varying(36) NOT NULL,
    tax_code character varying(30),
    tax_rate_total double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.tax_code OWNER TO postgres;

--
-- Name: tax_rate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tax_rate (
    id character varying(36) NOT NULL,
    tax_code_id character varying(36),
    tax_rate double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.tax_rate OWNER TO postgres;

--
-- Name: team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.team (
    id character varying(36) NOT NULL,
    team character varying(30),
    note character varying(76),
    lead_id character varying(36),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.team OWNER TO postgres;

--
-- Name: training; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.training (
    id character varying(36) NOT NULL,
    training character varying(50),
    course_id character varying(36),
    instructor_user_id character varying(36),
    instructor_contact_id character varying(36),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    certificate_id character varying(36),
    description text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.training OWNER TO postgres;

--
-- Name: training_certificate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.training_certificate (
    id character varying(36) NOT NULL,
    certificate character varying(30),
    description text,
    days_valid integer,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.training_certificate OWNER TO postgres;

--
-- Name: training_course; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.training_course (
    id character varying(36) NOT NULL,
    course character varying(30),
    description text,
    type_id character varying(36),
    hours double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.training_course OWNER TO postgres;

--
-- Name: training_course_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.training_course_type (
    id character varying(36) NOT NULL,
    type character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.training_course_type OWNER TO postgres;

--
-- Name: training_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.training_user (
    id character varying(36) NOT NULL,
    training_id character varying(36),
    user_id character varying(36),
    status_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.training_user OWNER TO postgres;

--
-- Name: uom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uom (
    id character varying(36) NOT NULL,
    uom character varying(30),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.uom OWNER TO postgres;

--
-- Name: uom_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uom_map (
    id character varying(36) NOT NULL,
    uom_src_id character varying(36),
    uom_dst_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.uom_map OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id character varying(36) NOT NULL,
    username character varying(50),
    status_id character varying(36),
    password character varying(32),
    user_type_id character varying(36),
    emp_no character varying(30),
    contractor_id character varying(36),
    job_role_id character varying(36),
    login_allowed smallint DEFAULT '1'::smallint,
    full_name character varying(50),
    job_title character varying(30),
    note character varying(76),
    acl_group_id character varying(36),
    admin_type_id character varying(36) DEFAULT 'search_admin_none'::character varying,
    team_id character varying(36),
    supervisor_id character varying(36),
    dept_id character varying(36),
    costcode_id character varying(36),
    req_approval_id character varying(36),
    po_approval_id character varying(36),
    craft_id character varying(36),
    phone_work character varying(24),
    phone_home character varying(16),
    phone_mobile character varying(16),
    email_work character varying(50),
    email_other character varying(50),
    im1_type_id character varying(36),
    im1_id character varying(30),
    im2_type_id character varying(36),
    im2_id character varying(30),
    fax character varying(16),
    company character varying(50),
    street1 character varying(50),
    street2 character varying(50),
    city character varying(50),
    state character varying(50),
    zip character varying(16),
    country character varying(50),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: vendor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendor (
    id character varying(36) NOT NULL,
    vendor character varying(30),
    tax_code_id character varying(36),
    status_id character varying(36),
    owner_user_id character varying(36),
    note character varying(76),
    contact_id character varying(36),
    address character varying(512),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.vendor OWNER TO postgres;

--
-- Name: vendor_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendor_contact (
    id character varying(36) NOT NULL,
    vendor_id character varying(36),
    contact_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.vendor_contact OWNER TO postgres;

--
-- Name: version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.version (
    id character varying(36) NOT NULL,
    vid character varying(30),
    note character varying(76),
    props character varying(2000),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.version OWNER TO postgres;

--
-- Name: version_upgrade_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.version_upgrade_log (
    id character varying(36) NOT NULL,
    vid character varying(30),
    ver_note character varying(76),
    prev_vid character varying(30),
    prev_ver_note character varying(76),
    prev_props character varying(2000),
    status_id character varying(36),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    upgrade_note character varying(76),
    results text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.version_upgrade_log OWNER TO postgres;

--
-- Name: wo_attachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_attachment (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    file_url character varying(1000),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_attachment OWNER TO postgres;

--
-- Name: wo_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_comment (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    comment text,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_comment OWNER TO postgres;

--
-- Name: wo_doc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_doc (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    seq integer,
    doc_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_doc OWNER TO postgres;

--
-- Name: wo_generation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_generation (
    id character varying(36) NOT NULL,
    status_id character varying(36),
    to_date date,
    wo_count integer,
    note character varying(76),
    modified_time timestamp without time zone,
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_generation OWNER TO postgres;

--
-- Name: wo_labor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_labor (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    user_id character varying(36),
    time_type_id character varying(36),
    start_time timestamp without time zone,
    shift_id character varying(36),
    craft_id character varying(36),
    hours double precision,
    ot_hours double precision,
    rate double precision,
    ot_factor double precision,
    line_cost double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_labor OWNER TO postgres;

--
-- Name: wo_meter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_meter (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    meter_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_meter OWNER TO postgres;

--
-- Name: wo_part; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_part (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    in_id character varying(36),
    qty_used double precision,
    line_cost double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_part OWNER TO postgres;

--
-- Name: wo_planned_downtime; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_planned_downtime (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    hours double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_planned_downtime OWNER TO postgres;

--
-- Name: wo_planned_labor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_planned_labor (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    craft_id character varying(36),
    hours double precision,
    crew_size integer,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_planned_labor OWNER TO postgres;

--
-- Name: wo_planned_part; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_planned_part (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_planned_part OWNER TO postgres;

--
-- Name: wo_planned_tool; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_planned_tool (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    in_id character varying(36),
    qty double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_planned_tool OWNER TO postgres;

--
-- Name: wo_safety; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_safety (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    seq integer,
    description text,
    followed smallint,
    followed_by_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_safety OWNER TO postgres;

--
-- Name: wo_sched_labor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_sched_labor (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    user_id character varying(36),
    start_time timestamp without time zone,
    shift_id character varying(36),
    hours double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_sched_labor OWNER TO postgres;

--
-- Name: wo_semaphore; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_semaphore (
    id character varying(36) NOT NULL,
    expiration timestamp without time zone,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_semaphore OWNER TO postgres;

--
-- Name: wo_seq; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_seq (
    id integer
);


ALTER TABLE public.wo_seq OWNER TO postgres;

--
-- Name: wo_status_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_status_log (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    to_status_id character varying(36),
    from_status_id character varying(36),
    changed_by_id character varying(36),
    created_time timestamp without time zone,
    comment text
);


ALTER TABLE public.wo_status_log OWNER TO postgres;

--
-- Name: wo_step; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_step (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    seq integer,
    description text,
    completed smallint,
    completed_by_id character varying(36),
    completed_time timestamp without time zone,
    shift_id character varying(36),
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_step OWNER TO postgres;

--
-- Name: wo_tool; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wo_tool (
    id character varying(36) NOT NULL,
    wo_id character varying(36),
    in_id character varying(36),
    qty_checkout double precision,
    qty_return double precision,
    line_cost double precision,
    note character varying(76),
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.wo_tool OWNER TO postgres;

--
-- Name: workorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workorder (
    id character varying(36) NOT NULL,
    wo_no character varying(30),
    note character varying(76),
    description text,
    asset_id character varying(36),
    pm_id character varying(36),
    asset_note character varying(76),
    category_id character varying(36),
    status_id character varying(36),
    priority_id character varying(36),
    resolution_id character varying(36),
    duplicate_wo_id character varying(36),
    rcm_action_id character varying(36),
    parent_wo_id character varying(36),
    origin_id character varying(36),
    rework_wo_id character varying(36),
    orig_contact_id character varying(36),
    orig_user_id character varying(36),
    orig_time timestamp without time zone,
    assigned_team_id character varying(36),
    assigned_to_id character varying(36),
    assigned_by_id character varying(36),
    assigned_time timestamp without time zone,
    time_needed timestamp without time zone,
    planned_start_time timestamp without time zone,
    sched_start_time timestamp without time zone,
    sched_start_shift_id character varying(36),
    actual_start_time timestamp without time zone,
    actual_start_shift_id character varying(36),
    planned_finish_time timestamp without time zone,
    sched_finish_time timestamp without time zone,
    sched_finish_shift_id character varying(36),
    actual_finish_time timestamp without time zone,
    actual_finish_shift_id character varying(36),
    costcode_id character varying(36),
    project_id character varying(36),
    dept_id character varying(36),
    planned_labor_hours double precision,
    sched_labor_hours double precision,
    actual_labor_hours double precision,
    labor_cost double precision,
    material_cost double precision,
    total_cost double precision,
    planned_downtime_hours double precision,
    actual_downtime_hours double precision,
    modified_time timestamp without time zone,
    modified_id character varying(36),
    created_time timestamp without time zone,
    created_id character varying(36)
);


ALTER TABLE public.workorder OWNER TO postgres;

--
-- Data for Name: acl_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acl_group (id, acl_group, parent_group_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.acl_group (id, acl_group, parent_group_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3737.dat';

--
-- Data for Name: asset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset (id, asset_no, note, priority_id, status_id, parent_id, type_id, template_id, category_id, location_id, weight, weight_uom_id, serial_no, owner_user_id, start_date, purchase_date, original_cost, manufacturer_id, vendor_id, upload_id, warranty_start_date, warranty_end_date, maint_labor_hours, maint_labor_cost, maint_material_cost, maint_cost, rollup_cost, costcode_id, dept_id, in_id, depreciation_type_id, depreciation_start, depreciation_time_id, depreciation_rate, description, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.asset (id, asset_no, note, priority_id, status_id, parent_id, type_id, template_id, category_id, location_id, weight, weight_uom_id, serial_no, owner_user_id, start_date, purchase_date, original_cost, manufacturer_id, vendor_id, upload_id, warranty_start_date, warranty_end_date, maint_labor_hours, maint_labor_cost, maint_material_cost, maint_cost, rollup_cost, costcode_id, dept_id, in_id, depreciation_type_id, depreciation_start, depreciation_time_id, depreciation_rate, description, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3738.dat';

--
-- Data for Name: asset_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_comment (id, asset_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.asset_comment (id, asset_id, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3739.dat';

--
-- Data for Name: asset_contract; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_contract (id, asset_id, contract_id, note, status_id, start_date, end_date, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.asset_contract (id, asset_id, contract_id, note, status_id, start_date, end_date, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3740.dat';

--
-- Data for Name: asset_depreciation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_depreciation (id, asset_id, start_date, end_date, depreciation_rate, start_value, end_value, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.asset_depreciation (id, asset_id, start_date, end_date, depreciation_rate, start_value, end_value, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3741.dat';

--
-- Data for Name: asset_downtime; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_downtime (id, asset_id, downtime_type_id, downtime_cause_id, start_time, shift_id, end_time, hours, wo_id, reported_by_id, reported_time, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.asset_downtime (id, asset_id, downtime_type_id, downtime_cause_id, start_time, shift_id, end_time, hours, wo_id, reported_by_id, reported_time, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3742.dat';

--
-- Data for Name: asset_meter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_meter (id, asset_id, meter_no, type_id, reading_uom_id, reading, is_rollover, time_taken, rollup_type_id, rollover_reading, rollover_count, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.asset_meter (id, asset_id, meter_no, type_id, reading_uom_id, reading, is_rollover, time_taken, rollup_type_id, rollover_reading, rollover_count, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3743.dat';

--
-- Data for Name: asset_part; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_part (id, asset_id, in_id, type_id, qty, uom_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.asset_part (id, asset_id, in_id, type_id, qty, uom_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3744.dat';

--
-- Data for Name: asset_seq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_seq (id) FROM stdin;
\.
COPY public.asset_seq (id) FROM '$$PATH$$/3745.dat';

--
-- Data for Name: asset_service_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_service_log (id, asset_id, from_status_id, to_status_id, from_location_id, to_location_id, from_parent_id, to_parent_id, from_owner_id, to_owner_id, changed_by_id, created_time, comment) FROM stdin;
\.
COPY public.asset_service_log (id, asset_id, from_status_id, to_status_id, from_location_id, to_location_id, from_parent_id, to_parent_id, from_owner_id, to_owner_id, changed_by_id, created_time, comment) FROM '$$PATH$$/3746.dat';

--
-- Data for Name: asset_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.asset_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3747.dat';

--
-- Data for Name: budget; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.budget (id, title_id, budget, state_id, start_date, end_date, budgeted, app, accounting, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.budget (id, title_id, budget, state_id, start_date, end_date, budgeted, app, accounting, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3748.dat';

--
-- Data for Name: budget_status_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.budget_status_log (id, budget_id, to_state_id, from_state_id, changed_by_id, created_time, comment) FROM stdin;
\.
COPY public.budget_status_log (id, budget_id, to_state_id, from_state_id, changed_by_id, created_time, comment) FROM '$$PATH$$/3749.dat';

--
-- Data for Name: budget_title; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.budget_title (id, title, start_date, end_date, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.budget_title (id, title, start_date, end_date, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3750.dat';

--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact (id, full_name, job_title, type_id, note, phone_work, phone_home, phone_mobile, email_work, email_other, im1_type_id, im1_id, im2_type_id, im2_id, fax, company, street1, street2, city, state, zip, country, asset_id, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.contact (id, full_name, job_title, type_id, note, phone_work, phone_home, phone_mobile, email_work, email_other, im1_type_id, im1_id, im2_type_id, im2_id, fax, company, street1, street2, city, state, zip, country, asset_id, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3751.dat';

--
-- Data for Name: contract; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contract (id, contract, vendor_id, note, type_id, status_id, contact_id, owner_user_id, start_date, end_date, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.contract (id, contract, vendor_id, note, type_id, status_id, contact_id, owner_user_id, start_date, end_date, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3752.dat';

--
-- Data for Name: contract_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contract_contact (id, contract_id, contact_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.contract_contact (id, contract_id, contact_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3753.dat';

--
-- Data for Name: contract_doc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contract_doc (id, contract_id, seq, doc_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.contract_doc (id, contract_id, seq, doc_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3754.dat';

--
-- Data for Name: costcode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.costcode (id, costcode, note, dept_id, parent_id, rollup_cost, cost_type_id, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.costcode (id, costcode, note, dept_id, parent_id, rollup_cost, cost_type_id, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3755.dat';

--
-- Data for Name: craft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.craft (id, craft, note, rate, ot_factor, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.craft (id, craft, note, rate, ot_factor, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3756.dat';

--
-- Data for Name: dash_wo_orig_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dash_wo_orig_day (id, counts, modified_time) FROM stdin;
\.
COPY public.dash_wo_orig_day (id, counts, modified_time) FROM '$$PATH$$/3757.dat';

--
-- Data for Name: dash_wo_orig_md; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dash_wo_orig_md (id, counts, modified_time) FROM stdin;
\.
COPY public.dash_wo_orig_md (id, counts, modified_time) FROM '$$PATH$$/3758.dat';

--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dept (id, dept, note, manager_id, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.dept (id, dept, note, manager_id, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3759.dat';

--
-- Data for Name: doc_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_attachment (id, doc_id, upload_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.doc_attachment (id, doc_id, upload_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3761.dat';

--
-- Data for Name: doc_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.doc_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3762.dat';

--
-- Data for Name: doc_upload; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.doc_upload (id, file_upload, access_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.doc_upload (id, file_upload, access_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3763.dat';

--
-- Data for Name: document; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.document (id, document, content, type_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.document (id, document, content, type_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3760.dat';

--
-- Data for Name: downtime_unit_cost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.downtime_unit_cost (id, asset_id, downtime_type_id, hourly_rate, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.downtime_unit_cost (id, asset_id, downtime_type_id, hourly_rate, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3764.dat';

--
-- Data for Name: in_audit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_audit (id, in_id, audit_user_id, start_date, end_date, hours, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.in_audit (id, in_id, audit_user_id, start_date, end_date, hours, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3768.dat';

--
-- Data for Name: in_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_comment (id, in_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.in_comment (id, in_id, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3769.dat';

--
-- Data for Name: in_doc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_doc (id, in_id, doc_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.in_doc (id, in_id, doc_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3770.dat';

--
-- Data for Name: in_location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_location (id, location, parent_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.in_location (id, location, parent_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3771.dat';

--
-- Data for Name: in_reserved; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_reserved (id, in_id, wo_id, qty, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.in_reserved (id, in_id, wo_id, qty, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3772.dat';

--
-- Data for Name: in_seq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_seq (id) FROM stdin;
\.
COPY public.in_seq (id) FROM '$$PATH$$/3773.dat';

--
-- Data for Name: in_stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_stock (id, in_id, location_id, qty, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.in_stock (id, in_id, location_id, qty, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3774.dat';

--
-- Data for Name: in_tran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_tran (id, in_id, type_id, location_id, qty, unit_cost, costcode_id, checkout_type_id, checkout_to_id, receive_type_id, receive_from_id, qty_available, qty_orig, orig_loc_id, checkout_tran_id, rent_duration, rent_rate, tran_total, note, tran_time, tran_user_id, store_user_id, voided, authorized_by_id, void_by_id, void_time, void_note, new_tran_id, created_time, created_id) FROM stdin;
\.
COPY public.in_tran (id, in_id, type_id, location_id, qty, unit_cost, costcode_id, checkout_type_id, checkout_to_id, receive_type_id, receive_from_id, qty_available, qty_orig, orig_loc_id, checkout_tran_id, rent_duration, rent_rate, tran_total, note, tran_time, tran_user_id, store_user_id, voided, authorized_by_id, void_by_id, void_time, void_note, new_tran_id, created_time, created_id) FROM '$$PATH$$/3775.dat';

--
-- Data for Name: in_tran_worksheet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_tran_worksheet (id, in_tran_id, src_tran_id, qty, unit_cost, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.in_tran_worksheet (id, in_tran_id, src_tran_id, qty, unit_cost, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3776.dat';

--
-- Data for Name: in_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.in_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3777.dat';

--
-- Data for Name: in_vendor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.in_vendor (id, in_id, vendor_id, vendor_part_no, is_primary, uom_id, unit_cost, lead_time_days, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.in_vendor (id, in_id, vendor_id, vendor_part_no, is_primary, uom_id, unit_cost, lead_time_days, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3778.dat';

--
-- Data for Name: ins_citation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ins_citation (id, citation, inspection_id, severity_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.ins_citation (id, citation, inspection_id, severity_id, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3766.dat';

--
-- Data for Name: inspection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inspection (id, inspection, type_id, inspect_contact_id, inspect_user_id, owner_user_id, start_time, end_time, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.inspection (id, inspection, type_id, inspect_contact_id, inspect_user_id, owner_user_id, start_time, end_time, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3765.dat';

--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventory (id, in_no, note, type_id, category_id, stock_type_id, valuation_type_id, abc_id, abc_time, uom_id, avg_unit_cost, rent_uom_id, rent_rate, qty_in_stock, qty_on_order, qty_reserved, qty_to_order, order_gen_id, order_type_id, min_level, max_level, reorder_point, reorder_qty, owner_user_id, notification_id, costcode_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.inventory (id, in_no, note, type_id, category_id, stock_type_id, valuation_type_id, abc_id, abc_time, uom_id, avg_unit_cost, rent_uom_id, rent_rate, qty_in_stock, qty_on_order, qty_reserved, qty_to_order, order_gen_id, order_type_id, min_level, max_level, reorder_point, reorder_qty, owner_user_id, notification_id, costcode_id, description, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3767.dat';

--
-- Data for Name: manufacturer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manufacturer (id, manufacturer, note, contact_id, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.manufacturer (id, manufacturer, note, contact_id, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3779.dat';

--
-- Data for Name: meter_transaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meter_transaction (id, meter_id, read_by_id, time_taken, reading, is_rollover, wo_id, note, created_time, created_id) FROM stdin;
\.
COPY public.meter_transaction (id, meter_id, read_by_id, time_taken, reading, is_rollover, wo_id, note, created_time, created_id) FROM '$$PATH$$/3780.dat';

--
-- Data for Name: meter_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meter_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.meter_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3781.dat';

--
-- Data for Name: pm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm (id, pm_no, description, status_id, asset_type_id, rcm_action_id, category_id, priority_id, origin_id, origin_user_id, assigned_to_id, assigned_team_id, duration_hours, release_type_id, schedule_type_id, release_schedule, labor_hours, downtime_hours, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm (id, pm_no, description, status_id, asset_type_id, rcm_action_id, category_id, priority_id, origin_id, origin_user_id, assigned_to_id, assigned_team_id, duration_hours, release_type_id, schedule_type_id, release_schedule, labor_hours, downtime_hours, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3782.dat';

--
-- Data for Name: pm_asset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_asset (id, pm_id, asset_id, last_released, last_closed, next_due_date, release_count, costcode_id, dept_id, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_asset (id, pm_id, asset_id, last_released, last_closed, next_due_date, release_count, costcode_id, dept_id, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3783.dat';

--
-- Data for Name: pm_audit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_audit (id, pm_id, audit_user_id, start_date, end_date, hours, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_audit (id, pm_id, audit_user_id, start_date, end_date, hours, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3784.dat';

--
-- Data for Name: pm_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_comment (id, pm_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_comment (id, pm_id, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3785.dat';

--
-- Data for Name: pm_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_dependency (id, pm_id, child_pm_id, type_id, scope_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_dependency (id, pm_id, child_pm_id, type_id, scope_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3786.dat';

--
-- Data for Name: pm_doc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_doc (id, pm_id, seq, doc_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_doc (id, pm_id, seq, doc_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3787.dat';

--
-- Data for Name: pm_downtime; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_downtime (id, pm_id, hours, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_downtime (id, pm_id, hours, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3788.dat';

--
-- Data for Name: pm_labor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_labor (id, pm_id, craft_id, hours, crew_size, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_labor (id, pm_id, craft_id, hours, crew_size, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3789.dat';

--
-- Data for Name: pm_meter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_meter (id, pm_asset_id, meter_id, release_by_meter, reading_released, rollover_count, reading_interval, copy_to_wo, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_meter (id, pm_asset_id, meter_id, release_by_meter, reading_released, rollover_count, reading_interval, copy_to_wo, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3790.dat';

--
-- Data for Name: pm_part; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_part (id, pm_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_part (id, pm_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3791.dat';

--
-- Data for Name: pm_safety; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_safety (id, pm_id, seq, description, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_safety (id, pm_id, seq, description, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3792.dat';

--
-- Data for Name: pm_season; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_season (id, pm_asset_id, start_date, end_date, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_season (id, pm_asset_id, start_date, end_date, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3793.dat';

--
-- Data for Name: pm_step; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_step (id, pm_id, seq, description, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_step (id, pm_id, seq, description, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3794.dat';

--
-- Data for Name: pm_tool; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pm_tool (id, pm_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.pm_tool (id, pm_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3795.dat';

--
-- Data for Name: po; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.po (id, po_no, status_id, state_id, buyer_id, buyer_name, buyer_phone, po_date, next_user_id, next_note, vendor_id, vendor_addr, vendor_contact_id, vendor_contact_phone, payment_term_id, shipping_type_id, shipping_term_id, shipping_addr_id, billing_addr_id, po_item_total, tax_rate_total, tax_charge, total_charge, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.po (id, po_no, status_id, state_id, buyer_id, buyer_name, buyer_phone, po_date, next_user_id, next_note, vendor_id, vendor_addr, vendor_contact_id, vendor_contact_phone, payment_term_id, shipping_type_id, shipping_term_id, shipping_addr_id, billing_addr_id, po_item_total, tax_rate_total, tax_charge, total_charge, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3796.dat';

--
-- Data for Name: po_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.po_address (id, address, type_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.po_address (id, address, type_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3797.dat';

--
-- Data for Name: po_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.po_item (id, line_no, po_id, in_id, vendor_part_no, note, unit_cost, qty, qty_received, uom_id, due_date, line_cost, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.po_item (id, line_no, po_id, in_id, vendor_part_no, note, unit_cost, qty, qty_received, uom_id, due_date, line_cost, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3798.dat';

--
-- Data for Name: po_seq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.po_seq (id) FROM stdin;
\.
COPY public.po_seq (id) FROM '$$PATH$$/3799.dat';

--
-- Data for Name: po_status_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.po_status_log (id, po_id, from_status_id, to_status_id, from_state_id, to_state_id, changed_by_id, created_time, comment) FROM stdin;
\.
COPY public.po_status_log (id, po_id, from_status_id, to_status_id, from_state_id, to_state_id, changed_by_id, created_time, comment) FROM '$$PATH$$/3800.dat';

--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (id, project_no, parent_id, note, status_id, priority_id, type_id, owner_user_id, sched_start_time, sched_end_time, actual_start_time, actual_end_time, sched_hours, actual_hours, percent_done, dept_id, costcode_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.project (id, project_no, parent_id, note, status_id, priority_id, type_id, owner_user_id, sched_start_time, sched_end_time, actual_start_time, actual_end_time, sched_hours, actual_hours, percent_done, dept_id, costcode_id, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3801.dat';

--
-- Data for Name: project_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.project_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3802.dat';

--
-- Data for Name: rcm_action; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rcm_action (id, failure_id, cause, action, cause_type_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.rcm_action (id, failure_id, cause, action, cause_type_id, description, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3803.dat';

--
-- Data for Name: rcm_action_part; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rcm_action_part (id, action_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.rcm_action_part (id, action_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3804.dat';

--
-- Data for Name: rcm_consequence; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rcm_consequence (id, failure_id, consequence, type_id, pm_policy_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.rcm_consequence (id, failure_id, consequence, type_id, pm_policy_id, description, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3805.dat';

--
-- Data for Name: rcm_failure; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rcm_failure (id, failure, is_evident, function_id, template_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.rcm_failure (id, failure, is_evident, function_id, template_id, description, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3806.dat';

--
-- Data for Name: rcm_function; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rcm_function (id, fn_name, template_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.rcm_function (id, fn_name, template_id, description, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3807.dat';

--
-- Data for Name: rcm_template; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rcm_template (id, template, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.rcm_template (id, template, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3808.dat';

--
-- Data for Name: recycle_bin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recycle_bin (id, parent_id, description, table_name, rec_id, value_deleted, created_time, created_id) FROM stdin;
\.
COPY public.recycle_bin (id, parent_id, description, table_name, rec_id, value_deleted, created_time, created_id) FROM '$$PATH$$/3809.dat';

--
-- Data for Name: req_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.req_item (id, req_id, in_id, vendor_id, vendor_part_no, unit_cost, qty, uom_id, line_cost, po_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.req_item (id, req_id, in_id, vendor_id, vendor_part_no, unit_cost, qty, uom_id, line_cost, po_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3811.dat';

--
-- Data for Name: req_seq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.req_seq (id) FROM stdin;
\.
COPY public.req_seq (id) FROM '$$PATH$$/3812.dat';

--
-- Data for Name: req_status_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.req_status_log (id, req_id, from_status_id, to_status_id, from_state_id, to_state_id, changed_by_id, created_time, comment) FROM stdin;
\.
COPY public.req_status_log (id, req_id, from_status_id, to_status_id, from_state_id, to_state_id, changed_by_id, created_time, comment) FROM '$$PATH$$/3813.dat';

--
-- Data for Name: requisition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.requisition (id, req_no, description, priority_id, status_id, req_on_po_id, source_id, state_id, due_date, shipping_type_id, wo_id, request_user_id, request_time, req_total, costcode_id, dept_id, next_user_id, next_note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.requisition (id, req_no, description, priority_id, status_id, req_on_po_id, source_id, state_id, due_date, shipping_type_id, wo_id, request_user_id, request_time, req_total, costcode_id, dept_id, next_user_id, next_note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3810.dat';

--
-- Data for Name: sched_shutdown; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sched_shutdown (id, shutdown, start_time, end_time, hours, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.sched_shutdown (id, shutdown, start_time, end_time, hours, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3817.dat';

--
-- Data for Name: sched_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sched_user (id, user_id, sched_date, shift_id, total_hours, sched_hours, hours_sched, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.sched_user (id, user_id, sched_date, shift_id, total_hours, sched_hours, hours_sched, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3818.dat';

--
-- Data for Name: scheduler_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scheduler_job (id, task_id, note, is_active, start_seq, release_time, release_day, time_due, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.scheduler_job (id, task_id, note, is_active, start_seq, release_time, release_day, time_due, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3814.dat';

--
-- Data for Name: scheduler_job_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scheduler_job_log (id, job_id, start_time, end_time, time_taken, results, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.scheduler_job_log (id, job_id, start_time, end_time, time_taken, results, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3815.dat';

--
-- Data for Name: scheduler_task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scheduler_task (id, task, note, class_name, class_path, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.scheduler_task (id, task, note, class_name, class_path, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3816.dat';

--
-- Data for Name: semaphore; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.semaphore (id, expire_time, created_time, created_id) FROM stdin;
\.
COPY public.semaphore (id, expire_time, created_time, created_id) FROM '$$PATH$$/3819.dat';

--
-- Data for Name: tax_code; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tax_code (id, tax_code, tax_rate_total, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.tax_code (id, tax_code, tax_rate_total, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3820.dat';

--
-- Data for Name: tax_rate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tax_rate (id, tax_code_id, tax_rate, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.tax_rate (id, tax_code_id, tax_rate, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3821.dat';

--
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.team (id, team, note, lead_id, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.team (id, team, note, lead_id, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3822.dat';

--
-- Data for Name: training; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.training (id, training, course_id, instructor_user_id, instructor_contact_id, start_time, end_time, certificate_id, description, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.training (id, training, course_id, instructor_user_id, instructor_contact_id, start_time, end_time, certificate_id, description, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3823.dat';

--
-- Data for Name: training_certificate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.training_certificate (id, certificate, description, days_valid, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.training_certificate (id, certificate, description, days_valid, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3824.dat';

--
-- Data for Name: training_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.training_course (id, course, description, type_id, hours, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.training_course (id, course, description, type_id, hours, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3825.dat';

--
-- Data for Name: training_course_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.training_course_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.training_course_type (id, type, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3826.dat';

--
-- Data for Name: training_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.training_user (id, training_id, user_id, status_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.training_user (id, training_id, user_id, status_id, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3827.dat';

--
-- Data for Name: uom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uom (id, uom, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.uom (id, uom, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3828.dat';

--
-- Data for Name: uom_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uom_map (id, uom_src_id, uom_dst_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.uom_map (id, uom_src_id, uom_dst_id, qty, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3829.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, status_id, password, user_type_id, emp_no, contractor_id, job_role_id, login_allowed, full_name, job_title, note, acl_group_id, admin_type_id, team_id, supervisor_id, dept_id, costcode_id, req_approval_id, po_approval_id, craft_id, phone_work, phone_home, phone_mobile, email_work, email_other, im1_type_id, im1_id, im2_type_id, im2_id, fax, company, street1, street2, city, state, zip, country, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.users (id, username, status_id, password, user_type_id, emp_no, contractor_id, job_role_id, login_allowed, full_name, job_title, note, acl_group_id, admin_type_id, team_id, supervisor_id, dept_id, costcode_id, req_approval_id, po_approval_id, craft_id, phone_work, phone_home, phone_mobile, email_work, email_other, im1_type_id, im1_id, im2_type_id, im2_id, fax, company, street1, street2, city, state, zip, country, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3830.dat';

--
-- Data for Name: vendor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendor (id, vendor, tax_code_id, status_id, owner_user_id, note, contact_id, address, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.vendor (id, vendor, tax_code_id, status_id, owner_user_id, note, contact_id, address, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3831.dat';

--
-- Data for Name: vendor_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendor_contact (id, vendor_id, contact_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.vendor_contact (id, vendor_id, contact_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3832.dat';

--
-- Data for Name: version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.version (id, vid, note, props, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.version (id, vid, note, props, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3833.dat';

--
-- Data for Name: version_upgrade_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.version_upgrade_log (id, vid, ver_note, prev_vid, prev_ver_note, prev_props, status_id, start_time, end_time, upgrade_note, results, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.version_upgrade_log (id, vid, ver_note, prev_vid, prev_ver_note, prev_props, status_id, start_time, end_time, upgrade_note, results, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3834.dat';

--
-- Data for Name: wo_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_attachment (id, wo_id, file_url, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_attachment (id, wo_id, file_url, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3836.dat';

--
-- Data for Name: wo_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_comment (id, wo_id, comment, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_comment (id, wo_id, comment, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3837.dat';

--
-- Data for Name: wo_doc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_doc (id, wo_id, seq, doc_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_doc (id, wo_id, seq, doc_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3838.dat';

--
-- Data for Name: wo_generation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_generation (id, status_id, to_date, wo_count, note, modified_time, created_time, created_id) FROM stdin;
\.
COPY public.wo_generation (id, status_id, to_date, wo_count, note, modified_time, created_time, created_id) FROM '$$PATH$$/3839.dat';

--
-- Data for Name: wo_labor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_labor (id, wo_id, user_id, time_type_id, start_time, shift_id, craft_id, hours, ot_hours, rate, ot_factor, line_cost, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_labor (id, wo_id, user_id, time_type_id, start_time, shift_id, craft_id, hours, ot_hours, rate, ot_factor, line_cost, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3840.dat';

--
-- Data for Name: wo_meter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_meter (id, wo_id, meter_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_meter (id, wo_id, meter_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3841.dat';

--
-- Data for Name: wo_part; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_part (id, wo_id, in_id, qty_used, line_cost, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_part (id, wo_id, in_id, qty_used, line_cost, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3842.dat';

--
-- Data for Name: wo_planned_downtime; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_planned_downtime (id, wo_id, hours, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_planned_downtime (id, wo_id, hours, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3843.dat';

--
-- Data for Name: wo_planned_labor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_planned_labor (id, wo_id, craft_id, hours, crew_size, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_planned_labor (id, wo_id, craft_id, hours, crew_size, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3844.dat';

--
-- Data for Name: wo_planned_part; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_planned_part (id, wo_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_planned_part (id, wo_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3845.dat';

--
-- Data for Name: wo_planned_tool; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_planned_tool (id, wo_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_planned_tool (id, wo_id, in_id, qty, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3846.dat';

--
-- Data for Name: wo_safety; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_safety (id, wo_id, seq, description, followed, followed_by_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_safety (id, wo_id, seq, description, followed, followed_by_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3847.dat';

--
-- Data for Name: wo_sched_labor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_sched_labor (id, wo_id, user_id, start_time, shift_id, hours, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_sched_labor (id, wo_id, user_id, start_time, shift_id, hours, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3848.dat';

--
-- Data for Name: wo_semaphore; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_semaphore (id, expiration, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_semaphore (id, expiration, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3849.dat';

--
-- Data for Name: wo_seq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_seq (id) FROM stdin;
\.
COPY public.wo_seq (id) FROM '$$PATH$$/3850.dat';

--
-- Data for Name: wo_status_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_status_log (id, wo_id, to_status_id, from_status_id, changed_by_id, created_time, comment) FROM stdin;
\.
COPY public.wo_status_log (id, wo_id, to_status_id, from_status_id, changed_by_id, created_time, comment) FROM '$$PATH$$/3851.dat';

--
-- Data for Name: wo_step; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_step (id, wo_id, seq, description, completed, completed_by_id, completed_time, shift_id, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_step (id, wo_id, seq, description, completed, completed_by_id, completed_time, shift_id, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3852.dat';

--
-- Data for Name: wo_tool; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wo_tool (id, wo_id, in_id, qty_checkout, qty_return, line_cost, note, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.wo_tool (id, wo_id, in_id, qty_checkout, qty_return, line_cost, note, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3853.dat';

--
-- Data for Name: workorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workorder (id, wo_no, note, description, asset_id, pm_id, asset_note, category_id, status_id, priority_id, resolution_id, duplicate_wo_id, rcm_action_id, parent_wo_id, origin_id, rework_wo_id, orig_contact_id, orig_user_id, orig_time, assigned_team_id, assigned_to_id, assigned_by_id, assigned_time, time_needed, planned_start_time, sched_start_time, sched_start_shift_id, actual_start_time, actual_start_shift_id, planned_finish_time, sched_finish_time, sched_finish_shift_id, actual_finish_time, actual_finish_shift_id, costcode_id, project_id, dept_id, planned_labor_hours, sched_labor_hours, actual_labor_hours, labor_cost, material_cost, total_cost, planned_downtime_hours, actual_downtime_hours, modified_time, modified_id, created_time, created_id) FROM stdin;
\.
COPY public.workorder (id, wo_no, note, description, asset_id, pm_id, asset_note, category_id, status_id, priority_id, resolution_id, duplicate_wo_id, rcm_action_id, parent_wo_id, origin_id, rework_wo_id, orig_contact_id, orig_user_id, orig_time, assigned_team_id, assigned_to_id, assigned_by_id, assigned_time, time_needed, planned_start_time, sched_start_time, sched_start_shift_id, actual_start_time, actual_start_shift_id, planned_finish_time, sched_finish_time, sched_finish_shift_id, actual_finish_time, actual_finish_shift_id, costcode_id, project_id, dept_id, planned_labor_hours, sched_labor_hours, actual_labor_hours, labor_cost, material_cost, total_cost, planned_downtime_hours, actual_downtime_hours, modified_time, modified_id, created_time, created_id) FROM '$$PATH$$/3835.dat';

--
-- Name: acl_group acl_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_group
    ADD CONSTRAINT acl_group_pkey PRIMARY KEY (id);


--
-- Name: asset_comment asset_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_comment
    ADD CONSTRAINT asset_comment_pkey PRIMARY KEY (id);


--
-- Name: asset_contract asset_contract_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT asset_contract_pkey PRIMARY KEY (id);


--
-- Name: asset_depreciation asset_depreciation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_depreciation
    ADD CONSTRAINT asset_depreciation_pkey PRIMARY KEY (id);


--
-- Name: asset_downtime asset_downtime_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT asset_downtime_pkey PRIMARY KEY (id);


--
-- Name: asset_meter asset_meter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT asset_meter_pkey PRIMARY KEY (id);


--
-- Name: asset_part asset_part_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT asset_part_pkey PRIMARY KEY (id);


--
-- Name: asset asset_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_pkey PRIMARY KEY (id);


--
-- Name: asset_service_log asset_service_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT asset_service_log_pkey PRIMARY KEY (id);


--
-- Name: asset_type asset_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_type
    ADD CONSTRAINT asset_type_pkey PRIMARY KEY (id);


--
-- Name: budget budget_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.budget
    ADD CONSTRAINT budget_pkey PRIMARY KEY (id);


--
-- Name: budget_status_log budget_status_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.budget_status_log
    ADD CONSTRAINT budget_status_log_pkey PRIMARY KEY (id);


--
-- Name: budget_title budget_title_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.budget_title
    ADD CONSTRAINT budget_title_pkey PRIMARY KEY (id);


--
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- Name: contract_contact contract_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract_contact
    ADD CONSTRAINT contract_contact_pkey PRIMARY KEY (id);


--
-- Name: contract_doc contract_doc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract_doc
    ADD CONSTRAINT contract_doc_pkey PRIMARY KEY (id);


--
-- Name: contract contract_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_pkey PRIMARY KEY (id);


--
-- Name: costcode costcode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costcode
    ADD CONSTRAINT costcode_pkey PRIMARY KEY (id);


--
-- Name: craft craft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.craft
    ADD CONSTRAINT craft_pkey PRIMARY KEY (id);


--
-- Name: dash_wo_orig_day dash_wo_orig_day_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dash_wo_orig_day
    ADD CONSTRAINT dash_wo_orig_day_pkey PRIMARY KEY (id);


--
-- Name: dash_wo_orig_md dash_wo_orig_md_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dash_wo_orig_md
    ADD CONSTRAINT dash_wo_orig_md_pkey PRIMARY KEY (id);


--
-- Name: dept dept_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (id);


--
-- Name: doc_attachment doc_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_attachment
    ADD CONSTRAINT doc_attachment_pkey PRIMARY KEY (id);


--
-- Name: doc_type doc_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_type
    ADD CONSTRAINT doc_type_pkey PRIMARY KEY (id);


--
-- Name: doc_upload doc_upload_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_upload
    ADD CONSTRAINT doc_upload_pkey PRIMARY KEY (id);


--
-- Name: document document_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_pkey PRIMARY KEY (id);


--
-- Name: downtime_unit_cost downtime_unit_cost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.downtime_unit_cost
    ADD CONSTRAINT downtime_unit_cost_pkey PRIMARY KEY (id);


--
-- Name: in_audit in_audit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_audit
    ADD CONSTRAINT in_audit_pkey PRIMARY KEY (id);


--
-- Name: in_comment in_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_comment
    ADD CONSTRAINT in_comment_pkey PRIMARY KEY (id);


--
-- Name: in_doc in_doc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_doc
    ADD CONSTRAINT in_doc_pkey PRIMARY KEY (id);


--
-- Name: in_location in_location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_location
    ADD CONSTRAINT in_location_pkey PRIMARY KEY (id);


--
-- Name: in_reserved in_reserved_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_reserved
    ADD CONSTRAINT in_reserved_pkey PRIMARY KEY (id);


--
-- Name: in_stock in_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_stock
    ADD CONSTRAINT in_stock_pkey PRIMARY KEY (id);


--
-- Name: in_tran in_tran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT in_tran_pkey PRIMARY KEY (id);


--
-- Name: in_tran_worksheet in_tran_worksheet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_tran_worksheet
    ADD CONSTRAINT in_tran_worksheet_pkey PRIMARY KEY (id);


--
-- Name: in_type in_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_type
    ADD CONSTRAINT in_type_pkey PRIMARY KEY (id);


--
-- Name: in_vendor in_vendor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_vendor
    ADD CONSTRAINT in_vendor_pkey PRIMARY KEY (id);


--
-- Name: ins_citation ins_citation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ins_citation
    ADD CONSTRAINT ins_citation_pkey PRIMARY KEY (id);


--
-- Name: inspection inspection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspection
    ADD CONSTRAINT inspection_pkey PRIMARY KEY (id);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);


--
-- Name: manufacturer manufacturer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT manufacturer_pkey PRIMARY KEY (id);


--
-- Name: meter_transaction meter_transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT meter_transaction_pkey PRIMARY KEY (id);


--
-- Name: meter_type meter_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meter_type
    ADD CONSTRAINT meter_type_pkey PRIMARY KEY (id);


--
-- Name: pm_asset pm_asset_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT pm_asset_pkey PRIMARY KEY (id);


--
-- Name: pm_audit pm_audit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_audit
    ADD CONSTRAINT pm_audit_pkey PRIMARY KEY (id);


--
-- Name: pm_comment pm_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_comment
    ADD CONSTRAINT pm_comment_pkey PRIMARY KEY (id);


--
-- Name: pm_dependency pm_dependency_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_dependency
    ADD CONSTRAINT pm_dependency_pkey PRIMARY KEY (id);


--
-- Name: pm_doc pm_doc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_doc
    ADD CONSTRAINT pm_doc_pkey PRIMARY KEY (id);


--
-- Name: pm_downtime pm_downtime_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_downtime
    ADD CONSTRAINT pm_downtime_pkey PRIMARY KEY (id);


--
-- Name: pm_labor pm_labor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_labor
    ADD CONSTRAINT pm_labor_pkey PRIMARY KEY (id);


--
-- Name: pm_meter pm_meter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_meter
    ADD CONSTRAINT pm_meter_pkey PRIMARY KEY (id);


--
-- Name: pm_part pm_part_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_part
    ADD CONSTRAINT pm_part_pkey PRIMARY KEY (id);


--
-- Name: pm pm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm
    ADD CONSTRAINT pm_pkey PRIMARY KEY (id);


--
-- Name: pm_safety pm_safety_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_safety
    ADD CONSTRAINT pm_safety_pkey PRIMARY KEY (id);


--
-- Name: pm_season pm_season_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_season
    ADD CONSTRAINT pm_season_pkey PRIMARY KEY (id);


--
-- Name: pm_step pm_step_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_step
    ADD CONSTRAINT pm_step_pkey PRIMARY KEY (id);


--
-- Name: pm_tool pm_tool_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_tool
    ADD CONSTRAINT pm_tool_pkey PRIMARY KEY (id);


--
-- Name: po_address po_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po_address
    ADD CONSTRAINT po_address_pkey PRIMARY KEY (id);


--
-- Name: po_item po_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po_item
    ADD CONSTRAINT po_item_pkey PRIMARY KEY (id);


--
-- Name: po po_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po
    ADD CONSTRAINT po_pkey PRIMARY KEY (id);


--
-- Name: po_status_log po_status_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po_status_log
    ADD CONSTRAINT po_status_log_pkey PRIMARY KEY (id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: project_type project_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_type
    ADD CONSTRAINT project_type_pkey PRIMARY KEY (id);


--
-- Name: rcm_action_part rcm_action_part_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_action_part
    ADD CONSTRAINT rcm_action_part_pkey PRIMARY KEY (id);


--
-- Name: rcm_action rcm_action_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_action
    ADD CONSTRAINT rcm_action_pkey PRIMARY KEY (id);


--
-- Name: rcm_consequence rcm_consequence_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_consequence
    ADD CONSTRAINT rcm_consequence_pkey PRIMARY KEY (id);


--
-- Name: rcm_failure rcm_failure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_failure
    ADD CONSTRAINT rcm_failure_pkey PRIMARY KEY (id);


--
-- Name: rcm_function rcm_function_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_function
    ADD CONSTRAINT rcm_function_pkey PRIMARY KEY (id);


--
-- Name: rcm_template rcm_template_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_template
    ADD CONSTRAINT rcm_template_pkey PRIMARY KEY (id);


--
-- Name: recycle_bin recycle_bin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recycle_bin
    ADD CONSTRAINT recycle_bin_pkey PRIMARY KEY (id);


--
-- Name: req_item req_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT req_item_pkey PRIMARY KEY (id);


--
-- Name: req_status_log req_status_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.req_status_log
    ADD CONSTRAINT req_status_log_pkey PRIMARY KEY (id);


--
-- Name: requisition requisition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT requisition_pkey PRIMARY KEY (id);


--
-- Name: sched_shutdown sched_shutdown_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sched_shutdown
    ADD CONSTRAINT sched_shutdown_pkey PRIMARY KEY (id);


--
-- Name: sched_user sched_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sched_user
    ADD CONSTRAINT sched_user_pkey PRIMARY KEY (id);


--
-- Name: scheduler_job_log scheduler_job_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scheduler_job_log
    ADD CONSTRAINT scheduler_job_log_pkey PRIMARY KEY (id);


--
-- Name: scheduler_job scheduler_job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scheduler_job
    ADD CONSTRAINT scheduler_job_pkey PRIMARY KEY (id);


--
-- Name: scheduler_task scheduler_task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scheduler_task
    ADD CONSTRAINT scheduler_task_pkey PRIMARY KEY (id);


--
-- Name: semaphore semaphore_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.semaphore
    ADD CONSTRAINT semaphore_pkey PRIMARY KEY (id);


--
-- Name: tax_code tax_code_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_code
    ADD CONSTRAINT tax_code_pkey PRIMARY KEY (id);


--
-- Name: tax_rate tax_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT tax_rate_pkey PRIMARY KEY (id);


--
-- Name: team team_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);


--
-- Name: training_certificate training_certificate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_certificate
    ADD CONSTRAINT training_certificate_pkey PRIMARY KEY (id);


--
-- Name: training_course training_course_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_course
    ADD CONSTRAINT training_course_pkey PRIMARY KEY (id);


--
-- Name: training_course_type training_course_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_course_type
    ADD CONSTRAINT training_course_type_pkey PRIMARY KEY (id);


--
-- Name: training training_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training
    ADD CONSTRAINT training_pkey PRIMARY KEY (id);


--
-- Name: training_user training_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_user
    ADD CONSTRAINT training_user_pkey PRIMARY KEY (id);


--
-- Name: uom_map uom_map_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uom_map
    ADD CONSTRAINT uom_map_pkey PRIMARY KEY (id);


--
-- Name: uom uom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uom
    ADD CONSTRAINT uom_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vendor_contact vendor_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor_contact
    ADD CONSTRAINT vendor_contact_pkey PRIMARY KEY (id);


--
-- Name: vendor vendor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT vendor_pkey PRIMARY KEY (id);


--
-- Name: version version_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.version
    ADD CONSTRAINT version_pkey PRIMARY KEY (id);


--
-- Name: version_upgrade_log version_upgrade_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.version_upgrade_log
    ADD CONSTRAINT version_upgrade_log_pkey PRIMARY KEY (id);


--
-- Name: wo_attachment wo_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_attachment
    ADD CONSTRAINT wo_attachment_pkey PRIMARY KEY (id);


--
-- Name: wo_comment wo_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_comment
    ADD CONSTRAINT wo_comment_pkey PRIMARY KEY (id);


--
-- Name: wo_doc wo_doc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_doc
    ADD CONSTRAINT wo_doc_pkey PRIMARY KEY (id);


--
-- Name: wo_generation wo_generation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_generation
    ADD CONSTRAINT wo_generation_pkey PRIMARY KEY (id);


--
-- Name: wo_labor wo_labor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_labor
    ADD CONSTRAINT wo_labor_pkey PRIMARY KEY (id);


--
-- Name: wo_meter wo_meter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_meter
    ADD CONSTRAINT wo_meter_pkey PRIMARY KEY (id);


--
-- Name: wo_part wo_part_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_part
    ADD CONSTRAINT wo_part_pkey PRIMARY KEY (id);


--
-- Name: wo_planned_downtime wo_planned_downtime_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_downtime
    ADD CONSTRAINT wo_planned_downtime_pkey PRIMARY KEY (id);


--
-- Name: wo_planned_labor wo_planned_labor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_labor
    ADD CONSTRAINT wo_planned_labor_pkey PRIMARY KEY (id);


--
-- Name: wo_planned_part wo_planned_part_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_part
    ADD CONSTRAINT wo_planned_part_pkey PRIMARY KEY (id);


--
-- Name: wo_planned_tool wo_planned_tool_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_tool
    ADD CONSTRAINT wo_planned_tool_pkey PRIMARY KEY (id);


--
-- Name: wo_safety wo_safety_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_safety
    ADD CONSTRAINT wo_safety_pkey PRIMARY KEY (id);


--
-- Name: wo_sched_labor wo_sched_labor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_sched_labor
    ADD CONSTRAINT wo_sched_labor_pkey PRIMARY KEY (id);


--
-- Name: wo_semaphore wo_semaphore_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_semaphore
    ADD CONSTRAINT wo_semaphore_pkey PRIMARY KEY (id);


--
-- Name: wo_status_log wo_status_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_status_log
    ADD CONSTRAINT wo_status_log_pkey PRIMARY KEY (id);


--
-- Name: wo_step wo_step_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_step
    ADD CONSTRAINT wo_step_pkey PRIMARY KEY (id);


--
-- Name: wo_tool wo_tool_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_tool
    ADD CONSTRAINT wo_tool_pkey PRIMARY KEY (id);


--
-- Name: workorder workorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT workorder_pkey PRIMARY KEY (id);


--
-- Name: asset_downtime fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk1 FOREIGN KEY (reported_by_id) REFERENCES public.users(id);


--
-- Name: meter_type fk11; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meter_type
    ADD CONSTRAINT fk11 FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: meter_type fk12; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meter_type
    ADD CONSTRAINT fk12 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: asset_downtime fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk2 FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: asset_downtime fk3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk3 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: asset_service_log fk_asl_asset; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_asset FOREIGN KEY (from_location_id) REFERENCES public.asset(id);


--
-- Name: asset_service_log fk_asl_asset_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_asset_2 FOREIGN KEY (to_location_id) REFERENCES public.asset(id);


--
-- Name: asset_service_log fk_asl_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_user_1 FOREIGN KEY (from_owner_id) REFERENCES public.users(id);


--
-- Name: asset_service_log fk_asl_user_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_user_2 FOREIGN KEY (to_owner_id) REFERENCES public.users(id);


--
-- Name: asset_service_log fk_asl_user_3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asl_user_3 FOREIGN KEY (changed_by_id) REFERENCES public.users(id);


--
-- Name: asset fk_asset_asset_loc_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_asset_loc_1 FOREIGN KEY (location_id) REFERENCES public.asset(id);


--
-- Name: asset fk_asset_asset_type_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_asset_type_1 FOREIGN KEY (type_id) REFERENCES public.asset_type(id);


--
-- Name: asset_comment fk_asset_comment_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_comment
    ADD CONSTRAINT fk_asset_comment_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);


--
-- Name: asset_comment fk_asset_comment_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_comment
    ADD CONSTRAINT fk_asset_comment_user_1 FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: asset_comment fk_asset_comment_user_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_comment
    ADD CONSTRAINT fk_asset_comment_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: asset_contract fk_asset_contract_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT fk_asset_contract_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);


--
-- Name: asset_contract fk_asset_contract_contract_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT fk_asset_contract_contract_1 FOREIGN KEY (contract_id) REFERENCES public.contract(id);


--
-- Name: asset fk_asset_costcode_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);


--
-- Name: asset_depreciation fk_asset_create; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_depreciation
    ADD CONSTRAINT fk_asset_create FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: asset_depreciation fk_asset_depreciation_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_depreciation
    ADD CONSTRAINT fk_asset_depreciation_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);


--
-- Name: asset fk_asset_dept_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_dept_1 FOREIGN KEY (dept_id) REFERENCES public.dept(id);


--
-- Name: asset fk_asset_document_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_document_1 FOREIGN KEY (upload_id) REFERENCES public.doc_upload(id);


--
-- Name: asset_downtime fk_asset_downtime_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk_asset_downtime_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);


--
-- Name: asset_downtime fk_asset_downtime_wo_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_downtime
    ADD CONSTRAINT fk_asset_downtime_wo_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: asset fk_asset_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: asset fk_asset_manufacturer_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_manufacturer_1 FOREIGN KEY (manufacturer_id) REFERENCES public.manufacturer(id);


--
-- Name: asset_meter fk_asset_meter_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_meter_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);


--
-- Name: asset_meter fk_asset_meter_meter_type_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_meter_meter_type_1 FOREIGN KEY (type_id) REFERENCES public.meter_type(id);


--
-- Name: asset_meter fk_asset_meter_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_meter_user_1 FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: asset_meter fk_asset_meter_user_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_meter_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: asset_contract fk_asset_modif; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT fk_asset_modif FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: asset_contract fk_asset_modif_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_contract
    ADD CONSTRAINT fk_asset_modif_1 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: asset_depreciation fk_asset_modified; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_depreciation
    ADD CONSTRAINT fk_asset_modified FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: asset_part fk_asset_part_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);


--
-- Name: asset_part fk_asset_part_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: asset_part fk_asset_part_uom_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_uom_1 FOREIGN KEY (uom_id) REFERENCES public.uom(id);


--
-- Name: asset_part fk_asset_part_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_user_1 FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: asset_part fk_asset_part_user_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_part
    ADD CONSTRAINT fk_asset_part_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: asset fk_asset_rcm_template_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_rcm_template_1 FOREIGN KEY (template_id) REFERENCES public.rcm_template(id);


--
-- Name: asset_service_log fk_asset_service_log_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_service_log
    ADD CONSTRAINT fk_asset_service_log_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);


--
-- Name: asset fk_asset_uom_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_uom_1 FOREIGN KEY (weight_uom_id) REFERENCES public.uom(id);


--
-- Name: asset_meter fk_asset_uom_4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_meter
    ADD CONSTRAINT fk_asset_uom_4 FOREIGN KEY (reading_uom_id) REFERENCES public.uom(id);


--
-- Name: asset fk_asset_user_3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_user_3 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: asset fk_asset_users_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_users_1 FOREIGN KEY (owner_user_id) REFERENCES public.users(id);


--
-- Name: asset fk_asset_users_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_users_2 FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: asset fk_asset_vendor_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset
    ADD CONSTRAINT fk_asset_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);


--
-- Name: asset_type fk_at_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_type
    ADD CONSTRAINT fk_at_user FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: asset_type fk_at_user_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_type
    ADD CONSTRAINT fk_at_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: budget fk_budget_budget_title_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.budget
    ADD CONSTRAINT fk_budget_budget_title_1 FOREIGN KEY (title_id) REFERENCES public.budget_title(id);


--
-- Name: budget_status_log fk_budget_status_log_budget_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.budget_status_log
    ADD CONSTRAINT fk_budget_status_log_budget_1 FOREIGN KEY (budget_id) REFERENCES public.budget(id);


--
-- Name: req_status_log fk_changed_by; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.req_status_log
    ADD CONSTRAINT fk_changed_by FOREIGN KEY (changed_by_id) REFERENCES public.users(id);


--
-- Name: contract fk_contract_contact_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract
    ADD CONSTRAINT fk_contract_contact_1 FOREIGN KEY (contact_id) REFERENCES public.contact(id);


--
-- Name: contract_contact fk_contract_contact_contact_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract_contact
    ADD CONSTRAINT fk_contract_contact_contact_1 FOREIGN KEY (contact_id) REFERENCES public.contact(id);


--
-- Name: contract_contact fk_contract_contact_contract_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract_contact
    ADD CONSTRAINT fk_contract_contact_contract_1 FOREIGN KEY (contract_id) REFERENCES public.contract(id);


--
-- Name: contract_doc fk_contract_doc_contract_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract_doc
    ADD CONSTRAINT fk_contract_doc_contract_1 FOREIGN KEY (contract_id) REFERENCES public.contract(id);


--
-- Name: contract_doc fk_contract_doc_document_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract_doc
    ADD CONSTRAINT fk_contract_doc_document_1 FOREIGN KEY (doc_id) REFERENCES public.document(id);


--
-- Name: contract fk_contract_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract
    ADD CONSTRAINT fk_contract_user_1 FOREIGN KEY (owner_user_id) REFERENCES public.users(id);


--
-- Name: contract fk_contract_vendor_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contract
    ADD CONSTRAINT fk_contract_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);


--
-- Name: costcode fk_costcode_dept_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costcode
    ADD CONSTRAINT fk_costcode_dept_1 FOREIGN KEY (dept_id) REFERENCES public.dept(id);


--
-- Name: doc_attachment fk_doc_attachment_doc_upload_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_attachment
    ADD CONSTRAINT fk_doc_attachment_doc_upload_2 FOREIGN KEY (upload_id) REFERENCES public.doc_upload(id);


--
-- Name: doc_attachment fk_doc_attachment_document_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doc_attachment
    ADD CONSTRAINT fk_doc_attachment_document_2 FOREIGN KEY (doc_id) REFERENCES public.document(id);


--
-- Name: document fk_document_doc_type_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document
    ADD CONSTRAINT fk_document_doc_type_1 FOREIGN KEY (type_id) REFERENCES public.doc_type(id);


--
-- Name: in_audit fk_in_audit_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_audit
    ADD CONSTRAINT fk_in_audit_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: in_audit fk_in_audit_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_audit
    ADD CONSTRAINT fk_in_audit_user_1 FOREIGN KEY (audit_user_id) REFERENCES public.users(id);


--
-- Name: in_comment fk_in_comment_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_comment
    ADD CONSTRAINT fk_in_comment_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: in_doc fk_in_doc_document_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_doc
    ADD CONSTRAINT fk_in_doc_document_1 FOREIGN KEY (doc_id) REFERENCES public.document(id);


--
-- Name: in_doc fk_in_doc_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_doc
    ADD CONSTRAINT fk_in_doc_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: in_reserved fk_in_reserved_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_reserved
    ADD CONSTRAINT fk_in_reserved_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: in_reserved fk_in_reserved_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_reserved
    ADD CONSTRAINT fk_in_reserved_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: in_stock fk_in_stock_in_location_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_stock
    ADD CONSTRAINT fk_in_stock_in_location_1 FOREIGN KEY (in_id) REFERENCES public.in_location(id);


--
-- Name: in_stock fk_in_stock_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_stock
    ADD CONSTRAINT fk_in_stock_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: in_tran fk_in_tran_costcode_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT fk_in_tran_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);


--
-- Name: in_tran fk_in_tran_in_location_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT fk_in_tran_in_location_1 FOREIGN KEY (location_id) REFERENCES public.in_location(id);


--
-- Name: in_tran fk_in_tran_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT fk_in_tran_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: in_tran fk_in_tran_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_tran
    ADD CONSTRAINT fk_in_tran_user_1 FOREIGN KEY (tran_user_id) REFERENCES public.users(id);


--
-- Name: in_tran_worksheet fk_in_tran_worksheet_in_tran_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_tran_worksheet
    ADD CONSTRAINT fk_in_tran_worksheet_in_tran_1 FOREIGN KEY (in_tran_id) REFERENCES public.in_tran(id);


--
-- Name: in_vendor fk_in_vendor_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_vendor
    ADD CONSTRAINT fk_in_vendor_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: in_vendor fk_in_vendor_uom_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_vendor
    ADD CONSTRAINT fk_in_vendor_uom_2 FOREIGN KEY (uom_id) REFERENCES public.uom(id);


--
-- Name: in_vendor fk_in_vendor_vendor_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.in_vendor
    ADD CONSTRAINT fk_in_vendor_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);


--
-- Name: ins_citation fk_ins_citation_inspection_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ins_citation
    ADD CONSTRAINT fk_ins_citation_inspection_1 FOREIGN KEY (inspection_id) REFERENCES public.inspection(id);


--
-- Name: inspection fk_inspection_contact_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspection
    ADD CONSTRAINT fk_inspection_contact_1 FOREIGN KEY (inspect_contact_id) REFERENCES public.contact(id);


--
-- Name: inspection fk_inspection_users_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspection
    ADD CONSTRAINT fk_inspection_users_1 FOREIGN KEY (inspect_user_id) REFERENCES public.users(id);


--
-- Name: inventory fk_inventory_costcode_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT fk_inventory_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);


--
-- Name: inventory fk_inventory_in_type_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT fk_inventory_in_type_1 FOREIGN KEY (type_id) REFERENCES public.in_type(id);


--
-- Name: inventory fk_inventory_uom_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT fk_inventory_uom_2 FOREIGN KEY (uom_id) REFERENCES public.uom(id);


--
-- Name: inventory fk_inventory_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT fk_inventory_user_1 FOREIGN KEY (owner_user_id) REFERENCES public.users(id);


--
-- Name: manufacturer fk_manufacturer_contact_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT fk_manufacturer_contact_1 FOREIGN KEY (contact_id) REFERENCES public.contact(id);


--
-- Name: manufacturer fk_manufacturer_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT fk_manufacturer_user_1 FOREIGN KEY (modified_id) REFERENCES public.users(id);


--
-- Name: manufacturer fk_manufacturer_user_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT fk_manufacturer_user_2 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: meter_transaction fk_meter_transaction_asset_meter_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT fk_meter_transaction_asset_meter_1 FOREIGN KEY (meter_id) REFERENCES public.asset_meter(id);


--
-- Name: meter_transaction fk_meter_transaction_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT fk_meter_transaction_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: meter_transaction fk_meter_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT fk_meter_user_1 FOREIGN KEY (created_id) REFERENCES public.users(id);


--
-- Name: meter_transaction fk_meter_user_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meter_transaction
    ADD CONSTRAINT fk_meter_user_2 FOREIGN KEY (read_by_id) REFERENCES public.users(id);


--
-- Name: pm_asset fk_pm_asset_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT fk_pm_asset_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);


--
-- Name: pm_asset fk_pm_asset_costcode_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT fk_pm_asset_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);


--
-- Name: pm_asset fk_pm_asset_dept_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT fk_pm_asset_dept_1 FOREIGN KEY (dept_id) REFERENCES public.dept(id);


--
-- Name: pm_asset fk_pm_asset_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_asset
    ADD CONSTRAINT fk_pm_asset_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm fk_pm_asset_type_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm
    ADD CONSTRAINT fk_pm_asset_type_1 FOREIGN KEY (asset_type_id) REFERENCES public.asset_type(id);


--
-- Name: pm_audit fk_pm_audit_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_audit
    ADD CONSTRAINT fk_pm_audit_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm_audit fk_pm_audit_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_audit
    ADD CONSTRAINT fk_pm_audit_user_1 FOREIGN KEY (audit_user_id) REFERENCES public.users(id);


--
-- Name: pm_comment fk_pm_comment_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_comment
    ADD CONSTRAINT fk_pm_comment_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm_dependency fk_pm_dependency_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_dependency
    ADD CONSTRAINT fk_pm_dependency_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm_doc fk_pm_doc_document_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_doc
    ADD CONSTRAINT fk_pm_doc_document_1 FOREIGN KEY (doc_id) REFERENCES public.document(id);


--
-- Name: pm_doc fk_pm_doc_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_doc
    ADD CONSTRAINT fk_pm_doc_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm_downtime fk_pm_downtime_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_downtime
    ADD CONSTRAINT fk_pm_downtime_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm_labor fk_pm_labor_craft_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_labor
    ADD CONSTRAINT fk_pm_labor_craft_1 FOREIGN KEY (craft_id) REFERENCES public.craft(id);


--
-- Name: pm_labor fk_pm_labor_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_labor
    ADD CONSTRAINT fk_pm_labor_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm_meter fk_pm_meter_asset; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_meter
    ADD CONSTRAINT fk_pm_meter_asset FOREIGN KEY (meter_id) REFERENCES public.asset_meter(id);


--
-- Name: pm_meter fk_pm_meter_pm_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_meter
    ADD CONSTRAINT fk_pm_meter_pm_asset_1 FOREIGN KEY (pm_asset_id) REFERENCES public.pm_asset(id);


--
-- Name: pm_part fk_pm_part_inventory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_part
    ADD CONSTRAINT fk_pm_part_inventory FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: pm_part fk_pm_part_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_part
    ADD CONSTRAINT fk_pm_part_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm fk_pm_rcm_action_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm
    ADD CONSTRAINT fk_pm_rcm_action_1 FOREIGN KEY (rcm_action_id) REFERENCES public.rcm_action(id);


--
-- Name: pm_safety fk_pm_safety_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_safety
    ADD CONSTRAINT fk_pm_safety_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm_season fk_pm_season_pm_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_season
    ADD CONSTRAINT fk_pm_season_pm_asset_1 FOREIGN KEY (pm_asset_id) REFERENCES public.pm_asset(id);


--
-- Name: pm_step fk_pm_step_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_step
    ADD CONSTRAINT fk_pm_step_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm fk_pm_team_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm
    ADD CONSTRAINT fk_pm_team_1 FOREIGN KEY (assigned_team_id) REFERENCES public.team(id);


--
-- Name: pm_tool fk_pm_tool_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_tool
    ADD CONSTRAINT fk_pm_tool_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: pm_tool fk_pm_tool_pm_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm_tool
    ADD CONSTRAINT fk_pm_tool_pm_1 FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: pm fk_pm_users_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pm
    ADD CONSTRAINT fk_pm_users_1 FOREIGN KEY (origin_user_id) REFERENCES public.users(id);


--
-- Name: po_item fk_po_item_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po_item
    ADD CONSTRAINT fk_po_item_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: po_item fk_po_item_po_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po_item
    ADD CONSTRAINT fk_po_item_po_1 FOREIGN KEY (po_id) REFERENCES public.po(id);


--
-- Name: po_item fk_po_item_uom_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po_item
    ADD CONSTRAINT fk_po_item_uom_2 FOREIGN KEY (uom_id) REFERENCES public.uom(id);


--
-- Name: po_status_log fk_po_status_log_po_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po_status_log
    ADD CONSTRAINT fk_po_status_log_po_1 FOREIGN KEY (po_id) REFERENCES public.po(id);


--
-- Name: po_status_log fk_po_status_log_users_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po_status_log
    ADD CONSTRAINT fk_po_status_log_users_1 FOREIGN KEY (changed_by_id) REFERENCES public.users(id);


--
-- Name: po fk_po_user_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po
    ADD CONSTRAINT fk_po_user_1 FOREIGN KEY (buyer_id) REFERENCES public.users(id);


--
-- Name: po fk_po_user_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po
    ADD CONSTRAINT fk_po_user_2 FOREIGN KEY (next_user_id) REFERENCES public.users(id);


--
-- Name: po fk_po_vendor_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.po
    ADD CONSTRAINT fk_po_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);


--
-- Name: project fk_project_costcode_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT fk_project_costcode_1 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);


--
-- Name: project fk_project_dept_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT fk_project_dept_1 FOREIGN KEY (dept_id) REFERENCES public.dept(id);


--
-- Name: project fk_project_project_type_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT fk_project_project_type_1 FOREIGN KEY (type_id) REFERENCES public.project_type(id);


--
-- Name: project fk_project_users_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT fk_project_users_2 FOREIGN KEY (owner_user_id) REFERENCES public.users(id);


--
-- Name: rcm_action_part fk_rcm_action_part_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_action_part
    ADD CONSTRAINT fk_rcm_action_part_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: rcm_action_part fk_rcm_action_part_rcm_action_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_action_part
    ADD CONSTRAINT fk_rcm_action_part_rcm_action_1 FOREIGN KEY (action_id) REFERENCES public.rcm_action(id);


--
-- Name: rcm_action fk_rcm_action_rcm_failure_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_action
    ADD CONSTRAINT fk_rcm_action_rcm_failure_1 FOREIGN KEY (failure_id) REFERENCES public.rcm_failure(id);


--
-- Name: rcm_consequence fk_rcm_consequence_rcm_failure_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_consequence
    ADD CONSTRAINT fk_rcm_consequence_rcm_failure_1 FOREIGN KEY (failure_id) REFERENCES public.rcm_failure(id);


--
-- Name: rcm_failure fk_rcm_failure_rcm_function_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_failure
    ADD CONSTRAINT fk_rcm_failure_rcm_function_1 FOREIGN KEY (function_id) REFERENCES public.rcm_function(id);


--
-- Name: rcm_failure fk_rcm_failure_rcm_template_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_failure
    ADD CONSTRAINT fk_rcm_failure_rcm_template_1 FOREIGN KEY (template_id) REFERENCES public.rcm_template(id);


--
-- Name: rcm_function fk_rcm_function_rcm_template_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rcm_function
    ADD CONSTRAINT fk_rcm_function_rcm_template_1 FOREIGN KEY (template_id) REFERENCES public.rcm_template(id);


--
-- Name: req_item fk_req_item_inventory_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_inventory_1 FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: req_item fk_req_item_po_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_po_1 FOREIGN KEY (po_id) REFERENCES public.po(id);


--
-- Name: req_item fk_req_item_requisition_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_requisition_1 FOREIGN KEY (req_id) REFERENCES public.requisition(id);


--
-- Name: req_item fk_req_item_uom_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_uom_1 FOREIGN KEY (uom_id) REFERENCES public.uom(id);


--
-- Name: req_item fk_req_item_vendor_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.req_item
    ADD CONSTRAINT fk_req_item_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);


--
-- Name: req_status_log fk_req_status_log_requisition_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.req_status_log
    ADD CONSTRAINT fk_req_status_log_requisition_1 FOREIGN KEY (req_id) REFERENCES public.requisition(id);


--
-- Name: requisition fk_requisition_costcode_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_costcode_2 FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);


--
-- Name: requisition fk_requisition_dept_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_dept_2 FOREIGN KEY (dept_id) REFERENCES public.dept(id);


--
-- Name: requisition fk_requisition_users_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_users_1 FOREIGN KEY (request_user_id) REFERENCES public.users(id);


--
-- Name: requisition fk_requisition_users_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_users_2 FOREIGN KEY (next_user_id) REFERENCES public.users(id);


--
-- Name: requisition fk_requisition_wo_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requisition
    ADD CONSTRAINT fk_requisition_wo_2 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: sched_user fk_sched_user_users_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sched_user
    ADD CONSTRAINT fk_sched_user_users_2 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: scheduler_job_log fk_scheduler_job_log_scheduler_job_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scheduler_job_log
    ADD CONSTRAINT fk_scheduler_job_log_scheduler_job_1 FOREIGN KEY (job_id) REFERENCES public.scheduler_job(id);


--
-- Name: scheduler_job_log fk_scheduler_job_log_scheduler_job_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scheduler_job_log
    ADD CONSTRAINT fk_scheduler_job_log_scheduler_job_2 FOREIGN KEY (job_id) REFERENCES public.scheduler_job(id);


--
-- Name: scheduler_job fk_scheduler_job_scheduler_task_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scheduler_job
    ADD CONSTRAINT fk_scheduler_job_scheduler_task_1 FOREIGN KEY (task_id) REFERENCES public.scheduler_task(id);


--
-- Name: tax_rate fk_tax_rate_tax_code_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT fk_tax_rate_tax_code_1 FOREIGN KEY (tax_code_id) REFERENCES public.tax_code(id);


--
-- Name: training fk_training_contact_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training
    ADD CONSTRAINT fk_training_contact_2 FOREIGN KEY (instructor_contact_id) REFERENCES public.contact(id);


--
-- Name: training_course fk_training_course_training_course_type_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_course
    ADD CONSTRAINT fk_training_course_training_course_type_1 FOREIGN KEY (type_id) REFERENCES public.training_course_type(id);


--
-- Name: training fk_training_training_certificate_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training
    ADD CONSTRAINT fk_training_training_certificate_1 FOREIGN KEY (certificate_id) REFERENCES public.training_certificate(id);


--
-- Name: training fk_training_training_course_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training
    ADD CONSTRAINT fk_training_training_course_1 FOREIGN KEY (course_id) REFERENCES public.training_course(id);


--
-- Name: training_user fk_training_user_training_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_user
    ADD CONSTRAINT fk_training_user_training_1 FOREIGN KEY (training_id) REFERENCES public.training(id);


--
-- Name: training_user fk_training_user_users_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training_user
    ADD CONSTRAINT fk_training_user_users_1 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: training fk_training_users_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.training
    ADD CONSTRAINT fk_training_users_1 FOREIGN KEY (instructor_user_id) REFERENCES public.users(id);


--
-- Name: uom_map fk_uom_map_uom_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uom_map
    ADD CONSTRAINT fk_uom_map_uom_1 FOREIGN KEY (uom_src_id) REFERENCES public.uom(id);


--
-- Name: uom_map fk_uom_map_uom_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uom_map
    ADD CONSTRAINT fk_uom_map_uom_2 FOREIGN KEY (uom_dst_id) REFERENCES public.uom(id);


--
-- Name: users fk_users_acl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_acl FOREIGN KEY (acl_group_id) REFERENCES public.acl_group(id);


--
-- Name: users fk_users_costcode; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_costcode FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);


--
-- Name: users fk_users_craft; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_craft FOREIGN KEY (craft_id) REFERENCES public.craft(id);


--
-- Name: users fk_users_dept_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_dept_2 FOREIGN KEY (dept_id) REFERENCES public.dept(id);


--
-- Name: users fk_users_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_team FOREIGN KEY (team_id) REFERENCES public.team(id);


--
-- Name: vendor_contact fk_vc_contact; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor_contact
    ADD CONSTRAINT fk_vc_contact FOREIGN KEY (contact_id) REFERENCES public.contact(id);


--
-- Name: vendor fk_vendor_contact; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT fk_vendor_contact FOREIGN KEY (contact_id) REFERENCES public.contact(id);


--
-- Name: vendor_contact fk_vendor_contact_vendor_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor_contact
    ADD CONSTRAINT fk_vendor_contact_vendor_1 FOREIGN KEY (vendor_id) REFERENCES public.vendor(id);


--
-- Name: vendor fk_vendor_task; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT fk_vendor_task FOREIGN KEY (tax_code_id) REFERENCES public.tax_code(id);


--
-- Name: vendor fk_vendor_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT fk_vendor_user FOREIGN KEY (owner_user_id) REFERENCES public.users(id);


--
-- Name: workorder fk_wo_at; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_at FOREIGN KEY (assigned_team_id) REFERENCES public.team(id);


--
-- Name: wo_attachment fk_wo_attachment_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_attachment
    ADD CONSTRAINT fk_wo_attachment_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_comment fk_wo_comment_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_comment
    ADD CONSTRAINT fk_wo_comment_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: workorder fk_wo_costcode; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_costcode FOREIGN KEY (costcode_id) REFERENCES public.costcode(id);


--
-- Name: workorder fk_wo_dept; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_dept FOREIGN KEY (dept_id) REFERENCES public.dept(id);


--
-- Name: wo_doc fk_wo_doc_document; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_doc
    ADD CONSTRAINT fk_wo_doc_document FOREIGN KEY (doc_id) REFERENCES public.document(id);


--
-- Name: wo_doc fk_wo_doc_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_doc
    ADD CONSTRAINT fk_wo_doc_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_labor fk_wo_labor_craft; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_labor
    ADD CONSTRAINT fk_wo_labor_craft FOREIGN KEY (craft_id) REFERENCES public.craft(id);


--
-- Name: wo_labor fk_wo_labor_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_labor
    ADD CONSTRAINT fk_wo_labor_user FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: wo_labor fk_wo_labor_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_labor
    ADD CONSTRAINT fk_wo_labor_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_meter fk_wo_meter_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_meter
    ADD CONSTRAINT fk_wo_meter_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: workorder fk_wo_oc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_oc FOREIGN KEY (orig_contact_id) REFERENCES public.contact(id);


--
-- Name: workorder fk_wo_ou_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_ou_1 FOREIGN KEY (orig_user_id) REFERENCES public.users(id);


--
-- Name: workorder fk_wo_ou_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_ou_2 FOREIGN KEY (assigned_to_id) REFERENCES public.users(id);


--
-- Name: workorder fk_wo_ou_3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_ou_3 FOREIGN KEY (assigned_by_id) REFERENCES public.users(id);


--
-- Name: wo_part fk_wo_part_inventory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_part
    ADD CONSTRAINT fk_wo_part_inventory FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: wo_part fk_wo_part_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_part
    ADD CONSTRAINT fk_wo_part_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_planned_downtime fk_wo_planned_downtime_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_downtime
    ADD CONSTRAINT fk_wo_planned_downtime_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_planned_labor fk_wo_planned_labor_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_labor
    ADD CONSTRAINT fk_wo_planned_labor_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_planned_part fk_wo_planned_part_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_part
    ADD CONSTRAINT fk_wo_planned_part_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_planned_tool fk_wo_planned_tool_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_tool
    ADD CONSTRAINT fk_wo_planned_tool_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: workorder fk_wo_pm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_pm FOREIGN KEY (pm_id) REFERENCES public.pm(id);


--
-- Name: workorder fk_wo_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_project FOREIGN KEY (project_id) REFERENCES public.project(id);


--
-- Name: workorder fk_wo_rcm_action; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_wo_rcm_action FOREIGN KEY (rcm_action_id) REFERENCES public.rcm_action(id);


--
-- Name: wo_safety fk_wo_safety_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_safety
    ADD CONSTRAINT fk_wo_safety_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_sched_labor fk_wo_sched_labor_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_sched_labor
    ADD CONSTRAINT fk_wo_sched_labor_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_status_log fk_wo_status_log_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_status_log
    ADD CONSTRAINT fk_wo_status_log_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_step fk_wo_step_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_step
    ADD CONSTRAINT fk_wo_step_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_tool fk_wo_tool_inv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_tool
    ADD CONSTRAINT fk_wo_tool_inv FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: wo_tool fk_wo_tool_workorder_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_tool
    ADD CONSTRAINT fk_wo_tool_workorder_1 FOREIGN KEY (wo_id) REFERENCES public.workorder(id);


--
-- Name: wo_planned_labor fk_wopl_craft; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_labor
    ADD CONSTRAINT fk_wopl_craft FOREIGN KEY (craft_id) REFERENCES public.craft(id);


--
-- Name: wo_planned_part fk_wopp_inventory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_planned_part
    ADD CONSTRAINT fk_wopp_inventory FOREIGN KEY (in_id) REFERENCES public.inventory(id);


--
-- Name: workorder fk_workorder_asset_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_workorder_asset_1 FOREIGN KEY (asset_id) REFERENCES public.asset(id);


--
-- Name: workorder fk_workorder_team_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workorder
    ADD CONSTRAINT fk_workorder_team_1 FOREIGN KEY (assigned_team_id) REFERENCES public.team(id);


--
-- Name: wo_sched_labor fk_wosl_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_sched_labor
    ADD CONSTRAINT fk_wosl_user FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: wo_status_log fk_wosl_user_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wo_status_log
    ADD CONSTRAINT fk_wosl_user_2 FOREIGN KEY (changed_by_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               