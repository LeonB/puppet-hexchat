class hexchat::package {

  apt::ppa { 'ppa:gwendal-lebihan-dev/hexchat-stable': }

  package  { $hexchat::package_name:
    ensure  => $hexchat::ensure,
    require => Apt::Ppa['ppa:gwendal-lebihan-dev/hexchat-stable'],
  }
}
