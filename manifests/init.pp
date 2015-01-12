# == Class: ensurepackages
#
# Install or remove a list of packages
#
# === Parameters
#
# [*present*]
#   A list of packages to be installed
#
# [*absent*]
#   A list of packages to be removed
#
# === Examples
#
#  class { 'ensurepackages':
#    present => [ 'emacs', 'vim' ],
#    absent => [ 'nano' ],
#  }
#
class ensurepackages(
  $present = [],
  $absent = [],
) {
  validate_array($present)
  validate_array($absent)

  ensure_packages($present)
  ensure_resource('package', $absent, { 'ensure' => 'absent' })
}
