#
# Cookbook:: pearson_apache2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package "httpd"

service "httpd" do
  action [:enable, :start]
end


file '/var/www/html/index.html' do
  content "<h1>#{node['pearson_apache']['welcome_msg']}"
  owner "apache"
end
