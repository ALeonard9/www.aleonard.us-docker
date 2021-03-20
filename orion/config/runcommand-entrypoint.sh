#!/bin/sh

wget https://orion-src.s3.us-east-2.amazonaws.com/orion-$ORION_ENV.zip -P /tmp
unzip -o -u /tmp/orion-$ORION_ENV.zip -d /var/www/
cd /var/www/cgi-bin/composer
rm /tmp/orion-$ORION_ENV.zip
curl -s https://getcomposer.org/installer | php
/bin/php /var/www/cgi-bin/composer/composer.phar install

echo "Running $2"

cd $1
/bin/php $2