FROM ubuntu:18.04
MAINTAINER Adam Leonard <adamleonard9@gmail.com>

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install nginx -y

CMD ["nginx"]

EXPOSE 80 443