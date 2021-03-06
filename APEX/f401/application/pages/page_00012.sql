prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(6877050287267426)
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About | &G_APP_NAME.'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(20718112665951240)
,p_html_page_header=>'"BLOG_CANONICAL_LINK_TAB"'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(30111637437970455)
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LAINFJAR'
,p_last_upd_yyyymmddhh24miss=>'20200531055721'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(30430710498753130)
,p_name=>'About Bloggers'
,p_template=>wwv_flow_api.id(6781372168267375)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:z-Content:t-Report--hideNoPagination'
,p_grid_column_span=>9
,p_display_column=>1
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t1.blogger_name  as blogger_name',
'  ,t1.blogger_desc      as blogger_desc',
'from #OWNER#.blog_bloggers t1',
'where 1 = 1',
'and t1.blogger_desc is not null',
'order by t1.display_seq'))
,p_optimizer_hint=>'APEX$USE_NO_PAGINATION'
,p_query_row_template=>wwv_flow_api.id(30641878306098019)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'&APP_TEXT$BLOG_MSG_NO_DATA_FOUND.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30431791112753140)
,p_query_column_id=>1
,p_column_alias=>'BLOGGER_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Blogger Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30431873720753141)
,p_query_column_id=>2
,p_column_alias=>'BLOGGER_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Blogger Desc'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
