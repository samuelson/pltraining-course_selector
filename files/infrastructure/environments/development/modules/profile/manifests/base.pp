class profile::base {
  # Example of resource declaration
  # This doesn't really merit the creation of a new class,
  # but it could grow to the point where a class that
  # manages these (or one class each) could be used instead.
  # The emphasis is on iterating quickly.

  package { ['wget', 'vim-common']:
    ensure => present,
  }

  # Example of class declaration using include
  include classroom::agent::hosts

  # Example of resource-like class declaration
  class { 'ssh::client':
    client_package => 'openssh-clients',
  }

}
