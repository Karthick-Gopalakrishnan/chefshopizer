if node['platform'] == 'ubuntu'
    default['shopizer_chef']['package'] = 'tomcat7'
  elsif node['platform'] == 'redhat'
    default['shopizer_chef']['package'] = 'tomcat'
  end

default['java']['jdk_version'] = '8'


