FROM php:fpm
RUN apt-get update \
  && apt-get install -y --no-install-recommends curl libpq-dev libmcrypt-dev libfreetype6-dev libjpeg-dev libldap2-dev libpng12-dev zlib1g-dev libxml2-dev \
  && docker-php-ext-install pdo_mysql soap \
  && docker-php-ext-configure gd --enable-gd-native-ttf --with-jpeg-dir=/usr/lib/x86_64-linux-gnu --with-png-dir=/usr/lib/x86_64-linux-gnu --with-freetype-dir=/usr/lib/x86_64-linux-gnu \
  && docker-php-ext-install gd
RUN apt-get install -y libicu-dev
RUN apt-get install -y libz-dev libmemcached-dev && \
    pecl install memcached && \
    docker-php-ext-enable memcached

RUN apt-get install -y git zip unzip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
RUN composer global require "fxp/composer-asset-plugin:^1.2.0"


RUN echo "date.timezone = Europe/Kiev" > $PHP_INI_DIR/conf.d/php.ini

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone