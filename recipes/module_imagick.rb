# not tested on centos redhat and fedora
pkg = value_for_platform(
  [ "centos", "redhat", "fedora" ] => {
    "5.4" => "php54-imagick",
    "5.3" => "php53u-imagick",
    "default" => "php-imagick"
  },
  [ "debian", "ubuntu" ] => {
    "default" => %w{ php5-imagick }
  }
)


package pkg do
  action :install
end
