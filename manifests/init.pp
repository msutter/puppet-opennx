# Public: Install OpenNx.app into /Applications.
#
# Examples
#
#   include opennx
class opennx (
  $version = '0.16.0.729',
){
  package { 'OpenNx':
    ensure   => 'installed',
    provider => 'appdmg',
    source   => "http://freefr.dl.sourceforge.net/project/opennx/opennx/CI/OpenNX-${version}.dmg"
  }
}
