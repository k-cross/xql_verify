#!/bin/sh

mysql -uroot -e "CREATE USER 'foo'@'%' IDENTIFIED BY 'fake_pw';"
mysql -uroot -e "GRANT USAGE ON *.* TO 'foo'@'%';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON foo.* TO 'foo'@'%';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON foo_test.* TO 'foo'@'%';"
