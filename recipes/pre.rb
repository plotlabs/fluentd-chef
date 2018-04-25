#
# Cookbook:: fluentd
# Recipe:: pre
#
# Copyright:: 2018, The Authors, All Rights Reserved.
template '/etc/security/limits.conf' do
        source 'security.limits.conf.erb'
        action :create
end

template '/etc/sysctl.conf' do
  source 'sysctl.conf.erb'
  action :create
end

execute 'sysctl setup' do
  command "sysctl -p"
end