prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>163277114777204535509
,p_default_application_id=>91978
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBYORACLEWORKSPACE'
);
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Job Application Report'
,p_alias=>'JOB-APPLICATION-REPORT'
,p_step_title=>'Job Application Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(165696225372728354824)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(165448317190108645064)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(165696226014603354826)
,p_plug_name=>'Job Application Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.NAME AS Applicant_Name,',
'    a.AGE,',
'    a.HIGHDEGREE AS Degree,',
'    j.JOBTITLE AS Job_Applied_For,',
'    c.COMPNAME AS Company,',
'    p.APPDATE AS Application_Date,',
'    p.OUTCOME AS Status',
'FROM ',
'    APPLIES p',
'INNER JOIN ',
'    APPLICANT a ON p.APPID = a.APPID',
'INNER JOIN ',
'    JOB j ON p.JOBID = j.JOBID',
'INNER JOIN ',
'    COMPANY c ON j.COMPID = c.COMPID',
'ORDER BY ',
'    p.APPDATE DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Job Application Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(165696226148110354826)
,p_name=>'Job Application Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JUBYGHEEVARGHESE1996@GMAIL.COM'
,p_internal_uid=>165696226148110354826
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(165696226828286354827)
,p_db_column_name=>'APPLICANT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Applicant Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(165696227281447354828)
,p_db_column_name=>'AGE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(165696227625831354828)
,p_db_column_name=>'DEGREE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Degree'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(165696228072278354828)
,p_db_column_name=>'JOB_APPLIED_FOR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job Applied For'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(165696228463982354829)
,p_db_column_name=>'COMPANY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Company'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(165696228868897354829)
,p_db_column_name=>'APPLICATION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Application Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(165696241195116356488)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1656962412'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICANT_NAME:AGE:DEGREE:JOB_APPLIED_FOR:COMPANY:APPLICATION_DATE'
);
wwv_flow_imp.component_end;
end;
/
