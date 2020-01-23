
-- Generated by ORDS REST Data Services 19.3.0.r3191521
-- Schema: BLOG_040000  Date: Tue Jan 07 09:40:57 2020 
--

BEGIN
    
  ORDS.DEFINE_MODULE(
      p_module_name    => 'BLOG_APPLICATION',
      p_base_path      => '/blog/v1/',
      p_items_per_page => 25,
      p_status         => 'PUBLISHED',
      p_comments       => 'Module to output blog rss feed and sitemap');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'BLOG_APPLICATION',
      p_pattern        => 'sitemap/index',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => 'Template for output sitemap index');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BLOG_APPLICATION',
      p_pattern        => 'sitemap/index',
      p_method         => 'GET',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'begin
  blog_xml.sitemap_index;
end;');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'BLOG_APPLICATION',
      p_pattern        => 'feed/rss',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => 'Template for output blog rss feed');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BLOG_APPLICATION',
      p_pattern        => 'feed/rss',
      p_method         => 'GET',
      p_source_type    => 'plsql/block',
      p_items_per_page => 0,
      p_mimes_allowed  => '',
      p_comments       => 'GET handler for output blog rss feed',
      p_source         => 
'begin
  blog_xml.rss(:p_lang);
end;');

  ORDS.DEFINE_PARAMETER(
      p_module_name        => 'BLOG_APPLICATION',
      p_pattern            => 'feed/rss',
      p_method             => 'GET',
      p_name               => 'p_lang',
      p_bind_variable_name => 'p_lang',
      p_source_type        => 'URI',
      p_param_type         => 'STRING',
      p_access_method      => 'IN',
      p_comments           => NULL);

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'BLOG_APPLICATION',
      p_pattern        => 'sitemap/main',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => 'Template for output sitemap main (blog tab)');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BLOG_APPLICATION',
      p_pattern        => 'sitemap/main',
      p_method         => 'GET',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'begin
  blog_xml.sitemap_main;
end;');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'BLOG_APPLICATION',
      p_pattern        => 'sitemap/posts',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => 'Template for output sitemap post (blog posts)');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'BLOG_APPLICATION',
      p_pattern        => 'sitemap/posts',
      p_method         => 'GET',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => '',
      p_comments       => NULL,
      p_source         => 
'begin
  blog_xml.sitemap_posts;
end;');

    
        
COMMIT;

END;