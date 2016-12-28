# build: docker build -t generalmeow/influxdb:<TAG>
# run: docker run -d -p <PORT>:<PORT> --name influxdb generalmeow/influxdb:<TAG>
FROM ubuntu:latest
MAINTAINER Paul Hoang 2016-12-28
RUN ["mkdir", "-p", "/home/influxdb-1.1.1"]
ADD ./influxdb-1.1.1_linux_amd64.tar.gz /home/influxdb-1.1.1
WORKDIR /home/influxdb-1.1.1
EXPOSE 8086
ENTRYPOINT ["/home/influxdb-1.1.1/usr/bin/influxd"]

