default['collectd-ng']['install_method'] = 'source'
default['collectd-ng']['source']['version'] = '5.4.1'
default['collectd-ng']['source']['file'] = "collectd-#{node['collectd-ng']['source']['version']}.tar.bz2"
default['collectd-ng']['source']['url'] = "https://collectd.org/files/#{node['collectd-ng']['source']['file']}"
default['collectd-ng']['plugins'] = %w{ write_graphite apache varnish }

if node['collectd-ng']['install_method'] == 'source'
  default['collectd-ng']['etc'] = '/opt/collectd/etc'
else
  default['collectd-ng']['etc'] = '/etc'
end
