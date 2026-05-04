prompt --application/shared_components/user_interface/lovs/company_compname
begin
--   Manifest
--     COMPANY.COMPNAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>163277114777204535509
,p_default_application_id=>91978
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBYORACLEWORKSPACE'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(165452288819410143493)
,p_lov_name=>'COMPANY.COMPNAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'COMPANY'
,p_return_column_name=>'COMPID'
,p_display_column_name=>'COMPNAME'
,p_default_sort_column_name=>'COMPNAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15765341314616
);
wwv_flow_imp.component_end;
end;
/
