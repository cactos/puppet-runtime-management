require 'spec_helper'
describe 'cactos_runtime_optimisation' do
  context 'with default values for all parameters' do
    it { should contain_class('cactos_runtime_optimisation') }
  end
end
