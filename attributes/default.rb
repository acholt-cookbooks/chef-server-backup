#
# Cookbook Name:: chef-server-backup
# Recipe:: default
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
#
default['chef-server-backup']['mailto']          = 'root'
default['chef-server-backup']['retention_days']  = '8'
default['chef-server-backup']['backup_name']     = 'chef_backup'
default['chef-server-backup']['working_dir']     = '/tmp'
default['chef-server-backup']['db_user']         = 'opscode-pgsql'
default['chef-server-backup']['backup_store']    = '/etc/chef_backup'
default['chef-server-backup']['cron']['minute']  = '0'
default['chef-server-backup']['cron']['hour']    = '23'
default['chef-server-backup']['cron']['day']     = '*'
default['chef-server-backup']['cron']['month']   = '*'
default['chef-server-backup']['cron']['weekday'] = '*'

