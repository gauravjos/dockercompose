FROM ubuntu:14.04
MAINTAINER Amol Shende amolsh@cybage.com
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq && apt-get install mysql-server
ADD my.cnf /etc/mysql/conf.d/my.cnf
RUN chmod 664 /etc/mysql/conf.d/my.cnf
ADD run.sh /usr/local/bin/run
ADD br.sql br.sql
RUN chmod +x /usr/local/bin/run
VOLUME ["/var/lib/mysql"]
EXPOSE 3306
CMD ["/usr/local/bin/run"]
