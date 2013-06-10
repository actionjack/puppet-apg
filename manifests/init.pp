# == Class: apg
#
# This module installs APG (Automated Pasword Generator).
#
# === Parameters
#
# [*version*]
#   What version of APG to install.
#
# === Variables
#
#
# === Examples
#
#  class { apg:
#    version => '2.2.3'
#  }
#
class apg (
  $version = 'latest'
) {

  validate_re($version, 'present|installed|latest|^[._0-9a-zA-Z:-]+$')

  package { 'apg':
      ensure => $version
  }
}
