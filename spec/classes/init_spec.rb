require 'spec_helper'
describe 'ensurepackages' do

  context 'with defaults for all parameters' do
    it { should contain_class('ensurepackages') }
  end
end
