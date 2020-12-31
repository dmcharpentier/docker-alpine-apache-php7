FROM nimmis/alpine-apache

MAINTAINER MyDarkFire <thebluepowers@gmail.com>

RUN  apk update && apk upgrade && \

    apk add libressl && \
    apk add curl openssl && \

    apk add php7 php7-apache2 php7-openssl php7-mbstring && \
    apk add php7-apcu php7-intl php7-mcrypt php7-json php7-gd php7-curl && \
    apk add php7-fpm php7-mysqlnd php7-pgsql php7-sqlite3 php7-phar && \
    apk add jq php7-session php7-pdo php7-xml php7-exif php7-pdo_mysql php7-gettext php7-iconv && \
    apk add php7-imagick@testing && \

    # install composer
    cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && \

    #clear cache
    rm -rf /var/cache/apk/*


