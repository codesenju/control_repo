node default {
#file {'/root/README':
#  ensure => file,
#  content => 'This is a readme',
#  owner => 'root',
# }
# package { 'docker':
#  ensure => installed,
#  name   => $docker,
#  }
}

node 'master.puppet.vm' {
  include role::master_server
  }
