#
# Cookbook:: httpd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#




file  '/root/test.txt' do
action:create
content  "this is my file "
end



directory '/root/lord' do
action:create
end

case node['platform']
when 'centos'
package 'tomcat' do
action:install
end
when 'debian'
package 'apache2' do
action:install
end
end
