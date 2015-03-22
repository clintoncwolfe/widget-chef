require 'spec_helper'

describe 'widgetworld-app::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe file('/opt/widgetworld') do
    it { should be_directory }
  end

  describe port(80) do
    it { should be_listening }
  end 

  describe command('curl http://127.0.0.1') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should_not match(/Apache/) }
  end

end
