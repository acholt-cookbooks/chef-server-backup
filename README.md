Chef Server Backup Cookbook
===========================
This cookbook will backup a standalone Chef server.

It will deploy a script and populate cron.d to execute it.

Attributes
----------

* node['chef-server-backup']['mailto']         - Email address for notifications. Default is root
* node['chef-server-backup']['retention_days'] - Number of days to keep backups. Default is an 8 day rotation.
* node['chef-server-backup']['working_dir']    - Temporary working directory. Default is '/tmp/chefbackup'.
* node['chef-server-backup']['db_user']        - The database username. Default is 'opscode-pgsql'.
* node['chef-server-backup']['backup_store']   - Which directory to store backups '/etc/chef_backup'.

License and Authors
-------------------
- Author:: Andrew Holt

Copyright (C) 2015  Andrew Holt

```text
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```
