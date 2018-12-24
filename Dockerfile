FROM nimmis/apache-php5
MAINTAINER Aidarbek <suleimenov.aidarbek@gmail.com>
RUN mkdir -p /var/www/public
ADD . /var/www/public
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80
EXPOSE 443
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_ROOT_USER=root
