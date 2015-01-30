default['collectd-ng']['install_method'] = 'source'
default['collectd-ng']['version'] = '5.4.1'
default['collectd-ng']['file'] = "collectd-#{node['collectd-ng']['version']}.tar.bz2"
default['collectd-ng']['url'] = "https://collectd.org/files/#{node['collectd-ng']['file']}"
default['collectd-ng']['plugins'] = []

if node['collectd-ng']['install_method'] == 'source'
  default['collectd-ng']['etc'] = '/opt/collectd/etc'
else
  default['collectd-ng']['etc'] = '/etc'
end
