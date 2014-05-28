# Public: Installs Slate.app into /Applications.
#
# Examples
#
#   include slate
class slate {
  package { 'slate':
    provider   => 'appdmg',
    source     => 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  }
}
