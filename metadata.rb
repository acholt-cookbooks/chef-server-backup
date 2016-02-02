name             'chef-server-backup'
maintainer       'Andrew Holt'
maintainer_email 'andrew@theholts.org'
license          'GNU Public License 3.0'
description      'Installs/Configures backups for Chef Server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.1'

depends 'cron', '~> 1.7.0'
