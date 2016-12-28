# influxdb
x86 ubuntu and armfh alpine - influx 1.1.1 build

### x86
build: docker build -t generalmeow/influxdb:\<TAG\>
run: docker run -d -p <PORT>:<PORT> --name influxdb generalmeow/influxdb:<TAG>

### armfh
build: docker build -t generalmeow/influxdb:<TAG>-arm -f Dockerfile-arm .
run: docker run -d -p <PORT>:<PORT> --name influxdb generalmeow/influxdb:<TAG>-arm
