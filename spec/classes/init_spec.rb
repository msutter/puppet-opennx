require 'spec_helper'

describe 'opennx' do
  it do
    should contain_package('OpenNx').with({
      :ensure   => 'installed',
      :provider => 'pkgdmg'
    })
  end
end
