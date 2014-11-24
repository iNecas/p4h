class p4h::hello (
  $greeting = "Hello",
  $name     = "World",
) {

  include foo

  file { '/file':
    ensure => present,
    content => "${greeting} ${name}",
  }
}
