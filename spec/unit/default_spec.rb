require 'spec_helper'


describe 'collectd-ng::default' do

  platforms = {
      'centos' => ['6.6']
  }

  platforms.each do |platform, versions|
    versions.each do |version|

      context "on #{platform.capitalize} #{version}" do
        let (:chef_run) do
          ChefSpec::Runner.new(log_level: :warn, platform: platform, version: version) do |node|
            # set additional node attributes here
          end.converge(described_recipe)
        end
      end
    end
  end
end
