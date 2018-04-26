#raghudevops26/sample02
FROM centos
RUN yum install httpd -y
RUN echo Hello World >/var/www/html/index.html
EXPOSE 80
CMD /usr/sbin/httpd -DFOREGROUND
