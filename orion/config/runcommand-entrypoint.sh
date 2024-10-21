#!/bin/sh

wget https://orion-src.s3.us-east-2.amazonaws.com/orion-$ORION_ENV.zip -P /tmp > /dev/null
unzip -o -u /tmp/orion-$ORION_ENV.zip -d /var/www/ > /dev/null
cd /var/www/cgi-bin/composer > /dev/null
rm /tmp/orion-$ORION_ENV.zip > /dev/null
curl -s https://getcomposer.org/installer | php > /dev/null
/bin/php /var/www/cgi-bin/composer/composer.phar install > /dev/null

echo "Running $2"

cd $1
/bin/php $2