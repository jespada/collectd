
FROM ubuntu:bionic


# Install required build tools
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y  librdkafka1 zlib1g collectd \
    telnet curl dnsutils iputils-ping kafkacat


ADD collectd.conf /etc/collectd.conf

CMD ["/usr/sbin/collectd", "-C", "/etc/collectd.conf", "-f"]