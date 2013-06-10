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
  package { 'apg':
      ensure => $version
  }
}
