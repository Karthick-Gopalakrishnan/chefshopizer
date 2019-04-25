#
# Cookbook:: shopizer_chef
# Recipe:: copywar
#
# Copyright:: 2019, The Authors, All Rights Reserved.

cookbook_file '/var/lib/tomcat/webapps/myshop.war' do
    source 'myshop.war'
   action :create
end

service 'tomcat' do
    action :start
end



