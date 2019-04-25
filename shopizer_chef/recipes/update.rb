#
# Cookbook:: shopizer_chef
# Recipe:: update
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update' do
    ignore_failure true
    action :update
    only_if { node['platform'] == 'ubuntu' }
  end

execute 'update' do
    command 'yum update -y'
    action :run
    only_if { node['platform'] == 'redhat' }
end

package node['shopizer_chef']['package'] do
  action :install
end




