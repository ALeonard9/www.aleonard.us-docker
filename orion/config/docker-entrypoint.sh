#!/bin/bash

# if [[ $ORION_ENV == "prod" ]]; then 
#     mkdir -p /var/www/cgi-bin/debug
#     service awslogsd start
# fi

wget https://orion-src.s3.us-east-2.amazonaws.com/orion-$ORION_ENV.zip -P /tmp
unzip -o -u /tmp/orion-$ORION_ENV.zip -d /var/www/
cd /var/www/cgi-bin/composer
rm /tmp/orion-$ORION_ENV.zip
curl -s https://getcomposer.org/installer | php
/bin/php /var/www/cgi-bin/composer/composer.phar install

if [[ $ORION_ENV == "dev" ]] || [[ $ORION_ENV == "local" ]]; then 
    mkdir -p /var/www/cgi-bin/debug
    cp /tmp/debug/* /var/www/cgi-bin/debug/
fi

rm -rf /run/httpd/* /tmp/httpd*

exec /usr/sbin/apachectl -DFOREGROUND