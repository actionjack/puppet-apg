require 'spec_helper'

describe 'apg', :type => :class do
  context 'Install apg' do
    let :facts do
      {
          :osfamily => 'RedHat'
      }
    end
    it { should contain_package('apg').with_ensure('latest') }
  end

  context 'Install apg version 2.2.3' do
    let :facts do
      {
          :osfamily => 'RedHat'
      }
    end
    let :params do
      {
          :version => '2.2.3'
      }
    end
    it { should contain_package('apg').with_ensure('2.2.3') }
  end

end