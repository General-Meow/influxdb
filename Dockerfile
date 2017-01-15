# build: docker build -t generalmeow/influxdb:<TAG>
# run: docker run -d -p 8086:8086 --name influxdb -v <>:/var/lib/influxdb generalmeow/influxdb:<TAG>
FROM ubuntu:latest
MAINTAINER Paul Hoang 2016-12-28
EXPOSE 8086
ADD ./influxdb-1.1.1_linux_amd64.tar.gz /home
WORKDIR /home/influxdb-1.1.1-1
VOLUME /var/lib/influxdb
ENTRYPOINT ["/home/influxdb-1.1.1-1/usr/bin/influxd", "-config", "/home/influxdb-1.1.1-1/etc/influxdb/influxdb.conf"]
