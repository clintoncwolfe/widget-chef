#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

execute 'apt_update' do
  command "apt-get update"
  action :run
end

package 'apache2'

