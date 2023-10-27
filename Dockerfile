FROM ubuntu

ENV TZ=UTC
USER root
RUN apt-get update 
RUN apt-get install -y apache2
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php libapache2-mod-php php-mysql
##RUN apt-get install -y php && apt-get install libapache2-mod-php && apt-get install -y php-mysql
RUN apt-get install -y mysql-client

COPY ./ /var/www/html
RUN cd /var/www/html 
RUN mv index.html index.html_bkp
CMD service apache2 start && sleep infinity

#RUN systemctl start apache2 && systemctl start mysql

