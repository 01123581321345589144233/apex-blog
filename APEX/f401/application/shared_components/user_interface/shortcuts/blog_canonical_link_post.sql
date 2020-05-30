prompt --application/shared_components/user_interface/shortcuts/blog_canonical_link_post
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(14610353218419017)
,p_shortcut_name=>'BLOG_CANONICAL_LINK_POST'
,p_shortcut_type=>'FUNCTION_BODY'
,p_comments=>'Used in page 2 page html header'
,p_shortcut=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return #OWNER#.blog_html.get_post_canonical_link(',
'  p_post_id => :P2_POST_ID',
');'))
);
end;
/
