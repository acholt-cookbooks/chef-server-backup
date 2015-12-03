name 'chef-server-backup'
maintainer 'Andrew Holt'
maintainer_email 'andrew@theholts.org'
license 'GNU Public License 3.0'
description 'Installs/Configures backups for Chef Server'
long_description 'Deploys and executes a backup script via CronD on the Chef Server'
version '0.1.0'

depends 'cron', '~> 1.7.0'
