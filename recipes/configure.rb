#
# Cookbook Name:: collectd-cookbook
# Recipe:: configure.rb
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

directory "#{node['collectd-ng']['etc']}/collectd.d" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  action :create
end

template "#{node['collectd-ng']['etc']}/collectd.conf" do
  source 'collectd.conf.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    :etcdir => node['collectd-ng']['etc']
  })
  notifies :reload, 'service[collectd]', :delayed
end
