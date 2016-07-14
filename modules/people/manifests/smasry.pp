class people::smasry {
  include homebrew
  include iterm2::stable
  include redis
  include redis::service
  include postgresql

  include textmate::textmate2::nightly
  include spotify
  include things
  include chrome
  include onepassword
  include onepassword::chrome
  include docker

  include java
  
  $home     = "/Users/${::boxen_user}"
  $code     = "${home}/code"
  
  file { $code:
    ensure  => directory
  }

}
