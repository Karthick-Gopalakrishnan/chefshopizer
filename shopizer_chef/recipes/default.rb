#
# Cookbook:: shopizer_chef
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# required receipe Java, Tomcat, Shopizer war file

# Cookbooks works only on RHEL & Ubuntu

# If node platform is not supported display the msg not supported.

if node['platform'] == 'ubuntu' or node['platform'] == 'redhat'
    include_recipe 'shopizer_chef::update'
    include_recipe 'java::default'
    include_recipe 'shopizer_chef::copywar'
    
else
    log 'message' do
        message 'Platform not supported'
        level :info
      end
end