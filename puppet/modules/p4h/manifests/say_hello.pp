define say_hello($name = $title) {
  notify { "Hello ${name}": }
}
