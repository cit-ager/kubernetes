#raghudevops26/httpd:v2
FROM centos
RUN yum install httpd httpd-devel gcc wget make -y 
RUN cd /opt && wget -qO- http://redrockdigimark.com/apachemirror/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.42-src.tar.gz | tar -xz 
RUN cd /opt/tomcat-connectors-1.2.42-src/native && ./configure --with-apxs=/usr/bin/apxs && make && make install 
RUN rm -rf /opt/tomcat-connectors-1.2.42-src
COPY workers.properties /etc/httpd/conf.d/workers.properties
COPY mod-jk.conf /etc/httpd/conf.d/mod-jk.conf
COPY httpd.sh /httpd.sh
RUN chmod +x /httpd.sh
EXPOSE 80
CMD /httpd.sh
