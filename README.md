This is a EBRC custom module.

Installs [phpLdapAdmin](http://phpldapadmin.sourceforge.net/wiki/) from EPEL package.

The rpm package installs a `/etc/httpd/conf.d/phpldapadmin.conf` that
you may want to remove and replace with other virtual host
configurations.

Not all possible PLA configurations are parameterized. See
`templates/config.php.erb` for those that are, and to add any new ones.

See EBRC's `profiles::ldapadmin_vhost` for example usage.
