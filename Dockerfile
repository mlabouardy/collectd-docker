FROM ubuntu:16.10
MAINTAINER mlabouardy <mohamed.labouardy@intercloud.com>

RUN apt-get update && apt-get install -y collectd collectd-utils iputils-ping snmp vim snmp-mibs-downloader

RUN download-mibs

RUN service collectd start

CMD collectd -C /etc/collectd/collectd.conf -f
