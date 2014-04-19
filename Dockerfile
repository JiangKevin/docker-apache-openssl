FROM tianon/centos

MAINTAINER Ke Zhu <davidzhu.4.2@gmail.com>

RUN yum -y install httpd mod_ssl
RUN rm -rf /var/www/*
RUN rm -f /etc/httpd/conf.d/ssl.conf

ADD ./mod_ssl.conf /etc/httpd/conf.d/

# env variables can be changed by docker
ENV HTTPD_SSL_CIPHER_SUITES ALL:!ADH:!EXPORT:!SSLv2:RC4+RSA:+HIGH:+MEDIUM:+LOW

EXPOSE 80 443

CMD ['/usr/sbin/httpd -D FOREGROUND']