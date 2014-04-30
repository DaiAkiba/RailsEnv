#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# rbenvのbash設定を追加
template "/etc/profile.d/rbenv.sh" do
  owner "root"
  group "root"
  mode 0644
end

# ruby 1.9.3-p392をインストール
execute "ruby install" do
  not_if "source /etc/profile.d/rbenv.sh; rbenv versions | grep #{node.build}"
  command "source /etc/profile.d/rbenv.sh; rbenv install #{node.build}"
  action :run
end

#globalの切り替え
execute "ruby change" do
  command "source /etc/profile.d/rbenv.sh; rbenv global #{node.build};rbenv rehash"
  action :run
end
