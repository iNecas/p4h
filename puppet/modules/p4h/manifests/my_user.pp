define my_user($user = $title) {
  user { $user: ensure => present }
  file { "/${user}":
    ensure  => file,
    content => "This is the user's first file",
    owner   => $user }
}
