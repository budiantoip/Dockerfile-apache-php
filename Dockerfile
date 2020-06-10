FROM nimmis/apache

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y php libapache2-mod-php  \
php-fpm php-cli php-mysqlnd php-pgsql php-sqlite3 php-mongodb \
php-redis php-memcache php-memcached \
php-apcu php-intl php-imagick php-mcrypt php-json php-gd php-curl \
php-log php-mail \
php-xml php-mbstring php-tcpdf && \
phpenmod mcrypt && \
rm -rf /var/lib/apt/lists/* && \
cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN apt-get install -y vim nano