FROM mysql:5.5
MAINTAINER Amol Shende amolsh@cybage.com
ENV DEBIAN_FRONTEND noninteractive
ADD my.cnf /etc/mysql/conf.d/my.cnf
RUN chmod 664 /etc/mysql/conf.d/my.cnf
ADD run.sh /usr/local/bin/run
ADD br.sql br.sql
RUN chmod +x /usr/local/bin/run
VOLUME ["/var/lib/mysql"]
EXPOSE 3306
CMD ["/usr/local/bin/run"]
