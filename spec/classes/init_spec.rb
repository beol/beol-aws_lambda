require 'spec_helper'
describe 'aws_lambda' do

  context 'with defaults for all parameters' do
    it { should contain_class('aws_lambda') }
  end
end
