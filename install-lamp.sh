#!/bin/bash

DB_PASS={1:-"admin1234"}

sudo tee /tmp/mysql-phpmyadmin.conf <<EOF
# MySQL root password
mysql-server mysql-server/root_password password $DB_PASS
mysql-server mysql-server/root_password_again password $DB_PASS

# phpMyAdmin administrative user password
phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2
phpmyadmin phpmyadmin/mysql/admin-pass password $DB_PASS
phpmyadmin phpmyadmin/mysql/app-pass password $DB_PASS
EOF

sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get install -y lamp-server^ phpmyadmin
