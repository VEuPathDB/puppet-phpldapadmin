
class phpldapadmin::config {

  $config_custom_session_blowfish    = $::phpldapadmin::config_custom_session_blowfish
  $servers_server_name               = $::phpldapadmin::servers_server_name
  $servers_server_host               = $::phpldapadmin::servers_server_host
  $servers_server_port               = $::phpldapadmin::servers_server_port
  $servers_server_base_array         = $::phpldapadmin::servers_server_base_array
  $servers_login_auth_type           = $::phpldapadmin::servers_login_auth_type
  $servers_login_bind_id             = $::phpldapadmin::servers_login_bind_id
  $servers_login_bind_pass           = $::phpldapadmin::servers_login_bind_pass
  $servers_server_tls                = $::phpldapadmin::servers_server_tls
  $servers_sasl_mech                 = $::phpldapadmin::servers_sasl_mech
  $servers_sasl_authz_id             = $::phpldapadmin::servers_sasl_authz_id
  $servers_sasl_authz_id_regex       = $::phpldapadmin::servers_sasl_authz_id_regex
  $servers_sasl_authz_id_replacement = $::phpldapadmin::servers_sasl_authz_id_replacement
  $servers_sasl_props                = $::phpldapadmin::servers_sasl_props
  $servers_appearance_password_hash  = $::phpldapadmin::servers_appearance_password_hash
  $servers_login_attr                = $::phpldapadmin::servers_login_attr
  $servers_login_base_array          = $::phpldapadmin::servers_login_base_array
  $servers_login_class               = $::phpldapadmin::servers_login_class
  $servers_login_fallback_dn         = $::phpldapadmin::servers_login_fallback_dn
  $servers_server_read_only          = $::phpldapadmin::servers_server_read_only
  $servers_appearance_show_create    = $::phpldapadmin::servers_appearance_show_create
  $servers_appearance_open_tree      = $::phpldapadmin::servers_appearance_open_tree
  $servers_auto_number_enable        = $::phpldapadmin::servers_auto_number_enable
  $servers_auto_number_mechanism     = $::phpldapadmin::servers_auto_number_mechanism
  $servers_auto_number_dn            = $::phpldapadmin::servers_auto_number_dn
  $servers_auto_number_pass          = $::phpldapadmin::servers_auto_number_pass
  $servers_login_anon_bind           = $::phpldapadmin::servers_login_anon_bind
  $servers_server_visible            = $::phpldapadmin::servers_server_visible
  $servers_server_hide_noaccess_base = $::phpldapadmin::servers_server_hide_noaccess_base
  $servers_server_branch_rename      = $::phpldapadmin::servers_server_branch_rename
  $servers_unique_dn                 = $::phpldapadmin::servers_unique_dn
  $servers_unique_pass               = $::phpldapadmin::servers_unique_pass
  $config_custom_appearance_hide_template_warning = $::phpldapadmin::config_custom_appearance_hide_template_warning

  file { '/usr/share/phpldapadmin/config/config.php':
    content => template('phpldapadmin/config.php.erb'),
    owner   => $::phpldapadmin::owner,
    group   => $::phpldapadmin::group,
    mode    => '0640',
  }

}
