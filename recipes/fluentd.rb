#
# Cookbook:: fluentd
# Recipe:: fluentd
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file "/tmp/install_fluentd.sh" do
  source "install_fluentd.sh"
  mode 0755
end

execute "install_fluentd" do
  command "sh /tmp/install_fluentd.sh"
  notifies :run, 'execute[start_fluentd_logger]', :immediately
end

execute "start_fluentd_logger" do
  command  "/etc/init.d/td-agent start"
end