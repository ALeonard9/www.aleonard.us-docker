#!/bin/bash

wget https://orion-src.s3.us-east-2.amazonaws.com/orion-dev.zip -P /tmp
unzip -o -u /tmp/orion-dev.zip -d /var/www/
cd /var/www/cgi-bin/composer
rm /tmp/orion-dev.zip
curl -s https://getcomposer.org/installer | php
/bin/php /var/www/cgi-bin/composer/composer.phar install
mkdir /var/www/cgi-bin/debug
cp /tmp/debug/* /var/www/cgi-bin/debug/

rm -rf /run/httpd/* /tmp/httpd*

exec /usr/sbin/apachectl -DFOREGROUND