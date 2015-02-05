require 'spec_helper'

describe file('/etc/collectd.d') do
  it { should be_directory }
end

describe file('/etc/collectd.conf') do
  it { should be_file }
end

describe file('/etc/init.d/collectd') do
  it { should be_file }
end
