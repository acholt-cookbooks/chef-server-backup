Chef Server Backup Cookbook
===========================
This cookbook will backup a standalone Chef server.

It will deploy a script and populate cron.d to execute it.

Attributes
----------

* `node['chef-server-backup']['mailto']`          - Email address for notifications. Default is root
* `node['chef-server-backup']['retention_days']`  - Number of days to keep backups. Default is an 8 day rotation.
* `node['chef-server-backup']['backup_name']`     - Name of the backup Tar file. Default is chef_backup.
* `node['chef-server-backup']['working_dir']`     - Temporary working directory. Default is '/tmp'.
* `node['chef-server-backup']['db_user']`         - The database username. Default is 'opscode-pgsql'.
* `node['chef-server-backup']['backup_store']`    - Which directory to store backups '/etc/chef_backup'.
* `node['chef-server-backup']['cron']['minute']`  - The minute at which the cron entry should run (0 - 59). Default value: *
* `node['chef-server-backup']['cron']['hour']`    - The hour at which the cron entry is to run (0 - 23). Default value: 23
* `node['chef-server-backup']['cron']['day']`     - The day of month at which the cron entry should run (1 - 31). Default value: *
* `node['chef-server-backup']['cron']['month']`   - The month in the year on which a cron entry is to run (1 - 12). Default value: *
* `node['chef-server-backup']['cron']['weekday']` - The day of the week on which this entry is to run (0 - 6), where Sunday = 0. Default value: *

Usage
-----
Set up the Chef server backup attributes in a role. For example create a role called
chefserver.json the is applied to all Chef standalone server.

```json
{
    "name": "chefserver",
    "description": "Role applied to Chef Servers",
    "chef_type": "role",
    "json_class": "Chef::Role",
    "default_attributes": {
      "chef-server-backup": {
        "mailto": "backup@example.com",
        "retention_days": "8"
      }
    },
    "run_list": ["chef-server-backup"]
}
```


License and Authors
-------------------
- Author:: Andrew Holt

```text
Copyright (C) 2015  Andrew Holt

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
