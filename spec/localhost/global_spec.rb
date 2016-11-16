require 'spec_helper'

describe file('/etc/hosts') do
  it { should be_file }
end
