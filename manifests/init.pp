class hexchat(
  $package_name = params_lookup( 'package_name' ),
  $enabled       = params_lookup( 'enabled' )
  ) inherits hexchat::params {

    $ensure = $enabled ? {
      true => present,
      false => absent
    }

  include hexchat::package, hexchat::config
}
