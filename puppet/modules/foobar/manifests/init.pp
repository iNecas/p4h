class foobar {
  if("hello\n" == template("foobar/template.erb")) {
    file { '/file':
      ensure => present,
      content => 'Hello world',
    }
  } else {
    file { '/another-file':
      ensure => present,
      content => template("foobar/template.erb"),
    }
  }
}
