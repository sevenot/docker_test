#Dockerfile create images 
FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y vim
RUN apt-get install -y iptables
RUN apt-get install -y curl
RUN apt-get install -y apache2-utils
RUN apt-get install -y php5
RUN apt-get install -y apache2
RUN apt-get install -y mysql-server
RUN apt-get install -y php5-mysql
RUN apt-get install -y php5-curl
RUN apt-get install -y php5-gd
EXPOSE 80
EXPOSE 22
EXPOSE 23
CMD /bin/bash
