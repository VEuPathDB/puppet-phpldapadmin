
class phpldapadmin (
  $install_dir     = '/usr/share/phpldapadmin',
  $owner           = 'root',
  $writeable_owner = 'apache',
  $group           = 'apache',

  $servers_server_name               = undef,
  $servers_server_host               = undef,
  $servers_server_port               = undef,
  $servers_server_base_array         = undef,
  $servers_login_auth_type           = undef,
  $servers_login_bind_id             = undef,
  $servers_login_bind_pass           = undef,
  $servers_server_tls                = undef,
  $servers_sasl_mech                 = undef,
  $servers_sasl_authz_id             = undef,
  $servers_sasl_authz_id_regex       = undef,
  $servers_sasl_authz_id_replacement = undef,
  $servers_sasl_props                = undef,
  $servers_appearance_password_hash  = undef,
  $servers_login_attr                = undef,
  $servers_login_base_array          = undef,
  $servers_login_class               = undef,
  $servers_login_fallback_dn         = undef,
  $servers_server_read_only          = undef,
  $servers_appearance_show_create    = undef,
  $servers_appearance_open_tree      = undef,
  $servers_auto_number_enable        = undef,
  $servers_auto_number_mechanism     = undef,
  $servers_auto_number_dn            = undef,
  $servers_auto_number_pass          = undef,
  $servers_login_anon_bind           = undef,
  $servers_server_visible            = undef,
  $servers_server_hide_noaccess_base = undef,
  $servers_server_branch_rename      = undef,
  $servers_unique_dn                 = undef,
  $servers_unique_pass               = undef,
  $config_custom_session_blowfish    = undef,
  $config_custom_appearance_hide_template_warning = undef,
){
  include ::phpldapadmin::install
  include ::phpldapadmin::config

  Class['::phpldapadmin::install'] ->
  Class['::phpldapadmin::config']

}
