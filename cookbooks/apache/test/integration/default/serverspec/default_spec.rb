require 'spec_helper'

describe 'apache::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe package('apache2') do  
    it { should be_installed }
  end
end
