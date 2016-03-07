require 'spec_helper'
describe 'livestatus' do

  context 'with defaults for all parameters' do
    it { should contain_class('livestatus') }
  end
end
