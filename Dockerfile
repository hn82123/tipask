FROM php:7.0-fpm-alpine

# Install
#RUN apk update
#RUN apk add git

RUN docker-php-ext-install pdo pdo_mysql gd

#RUN git clone https://github.com/sdfsky/tipask.git
#RUN mv tipask /var/www/
ENV ROOT /var/www/tipask

#ADD tipask-3.2.1 $ROOT
#RUN chmod 777 $ROOT/storage -R
#RUN chmod 777 $ROOT/bootstrap/cache
