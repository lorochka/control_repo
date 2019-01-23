node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is the README',
    owner   => 'root',
  }
  file {'/root/README':
    owner   => 'root',
  }
}
