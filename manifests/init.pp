class slate {
  package { 'slate':
    provider   => 'appdmg',
    source => 'http://slate.ninjamonkeysoftware.com/Slate.dmg'
  }

  exec { "enable assistive devices":
    command => "echo -n 'a' | tee /private/var/db/.AccessibilityAPIEnabled > /dev/null 2>&1; chmod 444 /private/var/db/.AccessibilityAPIEnabled",
    onlyif => "[ ! -f /private/var/db/.AccessibilityAPIEnabled ]",
    user => root,
    require => Package['slate']
  }
}
