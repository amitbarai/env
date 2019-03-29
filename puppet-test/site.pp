node default {
  service {'apache':
    ensure => running,
    enable => true,
  }
  ->service { 'firewalld' :
    ensure => 'stopped',
    enable => false,
  }
}
