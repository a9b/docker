FROM php:7-fpm
MAINTAINER a9bdocker

ENV GIT_VERSION git-2.10.0

RUN apt-get update && apt-get install -y \
  git

RUN cd /usr/local/src \
  && git clone https://github.com/phpredis/phpredis.git \
  && cd phpredis \
  && git checkout php7 \
  && phpize \
  && ./configure \
  && make \
  && make install

COPY index.php /var/www/html/
