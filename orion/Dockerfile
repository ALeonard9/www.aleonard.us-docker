FROM centos:7 AS dev

RUN yum -y update && \
    rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
    yum clean all && \
    yum install -y php55w php55w-mysql php55w-pdo php55w-mcrypt mariadb unzip wget mod_ssl && \
    wget https://orion-src.s3.us-east-2.amazonaws.com/orion-dev.zip -P /tmp && \
    unzip -o -u /tmp/orion-dev.zip -d /var/www/ && \
    cd /var/www/cgi-bin/composer && \ 
    rm /tmp/orion-dev.zip && \
    curl -s https://getcomposer.org/installer | php && \
    /bin/php /var/www/cgi-bin/composer/composer.phar install && \
    mkdir /var/www/cgi-bin/debug

COPY config/apache_config/orion_dev.conf /etc/httpd/conf.d/orion.conf

COPY debug /var/www/cgi-bin/debug

COPY config/.bashrc /root/.bashrc

COPY config/docker-entrypoint.sh /data/

RUN chmod -v +x /data/docker-entrypoint.sh  && \
    chmod -v +x /etc/httpd/conf.d/orion.conf

ENTRYPOINT ["/data/docker-entrypoint.sh"]

EXPOSE 80

FROM dev as prod

COPY config/apache_config/orion.conf /etc/httpd/conf.d/orion.conf

COPY config/ssl /etc/ssl

EXPOSE 80 443