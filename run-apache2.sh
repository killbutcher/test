#!/bin/bash
. /etc/apache2/envvars
[ ! -d ${APACHE_RUN_DIR:-/var/run/apache2} ] && mkdir -p ${APACHE_RUN_DIR:-/var/run/apache2}
[ ! -d ${APACHE_LOCK_DIR:-/var/lock/apache2} ] && mkdir ${APACHE_RUN_USER:-www-data} ${APACHE_LOCK_DIR:-/var/lock/apache2}

cp index.html /var/www/html/index.html

./usr/sbin/apache2 -D FOREGROUND
