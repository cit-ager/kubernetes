#!/bin/bash

if [ -z "$TOMCAT_IP" ]; then 
    echo "Missing option -e TOMCAT_IP=???"
    exit 1
fi
sed -i -e "/TOMCAT_IP/ c worker.worker1.host=$TOMCAT_IP" /etc/httpd/conf.d/workers.properties
echo "HOSTNAME = $(hostname) - V2" > /var/www/html/index.html
/usr/sbin/httpd -DFOREGROUND
