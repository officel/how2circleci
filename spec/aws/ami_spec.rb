require 'spec_helper'

describe ami('ami-0008a301') do
  # ec2-public-images-ap-northeast-1/getting-started.manifest.xml
  it { should exist }
end
