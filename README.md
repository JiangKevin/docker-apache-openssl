# docker-apache-openssl

Docker image for testing SSLCipherSuite option with httpd + openssl.

## What is installed

* CentOS 6.5
* Apache 2.2.15
* OpenSSL 1.0.1e

## Usage

	$ docker run -p 8443:443 -d shawnzhu/apache-openssl

Or with custom `SSLCipherSuite` in `/etc/httpd/conf.d/mod_ssl.conf`:

    $ docker run -p 8443:443 -e HTTPD_SSL_CIPHER_SUITE="ALL:!ADH:!EXPORT:!SSLv2:RC4+RSA:+HIGH:+MEDIUM:+LOW" -d shawnzhu/apache-openssl
