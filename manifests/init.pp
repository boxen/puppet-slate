class slate {
  package { 'slate':
    provider   => 'appdmg',
    source => 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  }
}
