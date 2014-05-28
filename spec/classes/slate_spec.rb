require 'spec_helper'

describe 'slate' do
  it do
    should contain_package('Slate').with({
      :source   => 'http://slate.ninjamonkeysoftware.com/Slate.dmg',
      :provider => 'appdmg'
    })
  end
end
