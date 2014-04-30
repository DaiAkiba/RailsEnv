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

# rubyをインストール
execute "ruby install" do
  not_if "source /etc/profile.d/rbenv.sh; rbenv versions | grep #{node.ruby_version}"
  command "source /etc/profile.d/rbenv.sh; rbenv install #{node.ruby_version}"
  action :run
end

# globalの切り替え
execute "ruby change" do
  command "source /etc/profile.d/rbenv.sh; rbenv global #{node.ruby_version};rbenv rehash"
  action :run
end

# railsのインストール
execute "rails.install" do
  command "gem install --no-ri --no-rdoc rails;"
  command "source /etc/profile.d/rbenv.sh; gem install --no-ri --no-rdoc rails;rbenv rehash"
  action :run
end
