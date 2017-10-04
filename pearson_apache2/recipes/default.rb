#
# Cookbook:: pearson_apache2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "apache2"

file '/var/www/html/index.html' do
  content "<h1>#{node['pearson_apache']['welcome_msg']}"
  owner "apache"
end
