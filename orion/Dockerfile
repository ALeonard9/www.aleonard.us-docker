FROM centos:7 AS local

RUN yum -y update && \
    rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
    yum clean all && \
    yum install -y git php55w php55w-mysql php55w-pdo php55w-mcrypt mariadb unzip wget mod_ssl awslogs && \
    mkdir -p /var/log/orion

COPY config/apache_config/orion_local.conf /etc/httpd/conf.d/orion.conf

COPY config/php/orion.ini /etc/php.d/orion.ini

# COPY config/awslog/awslog.conf config/awslog/awscli.conf /etc/awslogs/

COPY debug /tmp/debug

COPY config/.bashrc /root/.bashrc

COPY config/docker-entrypoint.sh config/runcommand-entrypoint.sh /data/

RUN chmod -v +x /data/docker-entrypoint.sh  && \
    chmod -v +x /data/runcommand-entrypoint.sh  && \
    chmod -v +x /etc/httpd/conf.d/orion.conf

EXPOSE 80

FROM local as dev

COPY config/apache_config/orion_dev.conf /etc/httpd/conf.d/orion.conf

FROM local as prod

COPY config/apache_config/orion.conf /etc/httpd/conf.d/orion.conf

COPY config/ssl /etc/ssl

EXPOSE 80 443
FROM centos:7 AS local

RUN yum -y update && \
    rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
    yum clean all && \
    yum install -y git php55w php55w-mysql php55w-pdo php55w-mcrypt mariadb unzip wget mod_ssl awslogs && \
    mkdir -p /var/log/orion

COPY config/apache_config/orion_local.conf /etc/httpd/conf.d/orion.conf

COPY config/php/orion.ini /etc/php.d/orion.ini

# COPY config/awslog/awslog.conf config/awslog/awscli.conf /etc/awslogs/

COPY debug /tmp/debug

COPY config/.bashrc /root/.bashrc

COPY config/docker-entrypoint.sh config/runcommand-entrypoint.sh /data/

RUN chmod -v +x /data/docker-entrypoint.sh  && \
    chmod -v +x /data/runcommand-entrypoint.sh  && \
    chmod -v +x /etc/httpd/conf.d/orion.conf

EXPOSE 80

FROM local as dev

COPY config/apache_config/orion_dev.conf /etc/httpd/conf.d/orion.conf

FROM local as prod

COPY config/apache_config/orion.conf /etc/httpd/conf.d/orion.conf

COPY config/ssl /etc/ssl

EXPOSE 80 443