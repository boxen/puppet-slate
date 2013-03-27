class slate {
  package { 'slate':
    provider   => 'appdmg',
    source => 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  }

  exec { "enable assistive devices":
    command => "osascript -e 'tell application \"System Events\" to set UI elements enabled to true'",
    onlyif => "[ ! -f /private/var/db/.AccessibilityAPIEnabled ]",
    user => root,
    require => Package['slate']
  }
}
