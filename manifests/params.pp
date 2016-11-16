class apache:params {
  case $::osfamily {
    'Debian': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    'RedHat', 'Amazon': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    default: {
      fail(${operatingsystem} not supporte)
    }
  }
  $webpage_text = 'puppet welcome'
}
