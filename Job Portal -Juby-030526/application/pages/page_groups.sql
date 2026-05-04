prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 91978
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>163277114777204535509
,p_default_application_id=>91978
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBYORACLEWORKSPACE'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(165448322906982645075)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
