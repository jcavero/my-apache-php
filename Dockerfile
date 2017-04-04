FROM library/debian:jessie
MAINTAINER josi
RUN apt-get update &&  \
    apt-get -y install libapache2-mod-php5 php5-mysql php5-gd 	
#       rm -rf /var/cache/apt /var/lib/{apt,dpkg}
ENTRYPOINT [ "/usr/sbin/apachectl", "-D", "FOREGROUND" ]
EXPOSE 80:80
