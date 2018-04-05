# Installs phpLdapAdmin from EPEL

class phpldapadmin::install {

  $install_dir = $::phpldapadmin::install_dir
  $owner       = $::phpldapadmin::owner
  $group       = $::phpldapadmin::group

  package { 'phpldapadmin': }

  file { "${install_dir}/templates/creation/oracleContext.xml":
    source =>  "puppet:///modules/phpldapadmin/oracleContext.xml",
    owner  => $owner,
    group  => $group,
    mode   => '0640',
  }

  file { "${install_dir}/htdocs/images/default/oracle.png":
    source =>  "puppet:///modules/phpldapadmin/oracle.png",
    owner  => $owner,
    group  => $group,
    mode   => '0640',
  }

}
