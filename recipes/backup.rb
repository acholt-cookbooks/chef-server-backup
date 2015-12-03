#
# Cookbook Name:: chef-server-backup
# Recipe:: backup
#
# Copyright (C) 2015  Andrew Holt
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

OWNER = "#{node["chef-server-backup"]["db_user"]}"


directory node['chef-server-backup']['backup_store'] do
  owner OWNER
  group OWNER
  mode  "0750"
  action :create
end

template '/usr/local/bin/chef-backup.sh' do
  source 'chef-backup.erb'
  owner  'root'
  group  'root'
  mode   '0550'
  action :create
end

cron_d 'daily-chef-backup' do
  minute  0
  hour    23
  command '/usr/local/bin/chef-backup.sh'
  user    'root'
end
