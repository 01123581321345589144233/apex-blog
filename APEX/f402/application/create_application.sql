prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'BLOG_040000')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Blog Administration')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'402')
,p_application_group=>3742713376965422
,p_application_group_name=>'BLOG_040000'
,p_application_group_comment=>'APEX Blog'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B22C496AFD040C7B5F1E21FA4AC20C2D68FA779C3AF68FB8A6F3F4BB268E96B2'
,p_checksum_salt_last_reset=>'20200329211509'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PREFERENCE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2019.04.22.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(24462639138097628)
,p_populate_roles=>'A'
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'&G_APP_NAME.'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'DD.MM.YYYY'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T:O'
,p_security_scheme=>wwv_flow_api.id(28359530175115492)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'Y'
,p_error_handling_function=>'#OWNER#.blog_util.apex_error_handler'
,p_substitution_string_01=>'G_ADMIN_APP_ID'
,p_substitution_value_01=>'YES'
,p_last_updated_by=>'LAINFJAR'
,p_last_upd_yyyymmddhh24miss=>'20200701170359'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>195
,p_ui_type_name => null
);
end;
/
