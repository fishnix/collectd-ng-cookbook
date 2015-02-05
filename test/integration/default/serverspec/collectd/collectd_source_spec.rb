require 'spec_helper'

version = '5.4.1'

describe file('/opt/collectd') do
  it { should be_directory }
end

describe file('/opt/collectd/etc') do
  it { should be_directory }
end

describe file('/opt/collectd/etc/collectd.d') do
  it { should be_directory }
end

describe file('/opt/collectd/etc/collectd.conf') do
  it { should be_file }
end

describe file('/etc/init.d/collectd') do
  it { should be_file }
end
