FROM php:7.0-fpm-alpine

# Install
RUN apk update
RUN apk add gcc g++ libpng-dev
RUN apk add jpeg-dev
RUN apk add freetype-dev fontconfig
#RUN apk add git

RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

#RUN git clone https://github.com/sdfsky/tipask.git
#RUN mv tipask /var/www/
ENV ROOT /var/www/tipask

#ADD tipask-3.2.1 $ROOT
#RUN chmod 777 $ROOT/storage -R
#RUN chmod 777 $ROOT/bootstrap/cache
