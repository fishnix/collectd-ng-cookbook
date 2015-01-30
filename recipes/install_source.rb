#
# Cookbook Name:: collectd-cookbook
# Recipe:: install_source.rb
#
# Copyright (C) 2014 E Camden Fisher
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'build-essential::default'
include_recipe 'collectd-ng::basedeps'

source_file = "#{Chef::Config[:file_cache_path]}/#{node['collectd-ng']['file']}"
remote_file source_file do
  source node['collectd-ng']['url']
  notifies :run, 'bash[install_collectd]', :immediately
end

bash "install_collectd" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    tar -jxvf #{source_file}
    cd collectd-#{node['collectd-ng']['version']}
    ./configure
    make
    make install
  EOH
  action :nothing
end

template '/etc/init.d/collectd' do
  owner 'root'
  group 'root'
  mode 0755
  source 'collectd_init'
end

include_recipe 'collectd-ng::configure'

service 'collectd' do
  action [:enable, :start]
end
