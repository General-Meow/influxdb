# influxdb
x86 ubuntu and armfh alpine - influx 1.1.1 build

### x86
build: docker build -t generalmeow/influxdb:\<TAG\>
run: docker run -d -p <PORT>:<PORT> --name influxdb generalmeow/influxdb:<TAG>

### armfh
build: docker build -t generalmeow/influxdb:<TAG>-arm -f Dockerfile-arm .
run: docker run -d -p <PORT>:<PORT> --name influxdb generalmeow/influxdb:<TAG>-arm

## Commands
- influxd				- start the database daemon
- influx				- start the commandline interface connecting to localhost:8086
- influx -host <HOSTorIP>		- start the commandline interface connecting to the specified host
- CREATE DATABASE <dbname>		- create a database
- SHOW DATABASES			- show the current available databases
- USE <dbname>				- select the database to use
- INSERT <measurement>[,<tag-key>=<tag-value>...] <field-key>=<field-value>[,<field2-key>=<field2-value>...] [unix-nano-timestamp]

This basically means the insert command takes a measurement (like type or table) followed by tags then a spaced of comma seperated field (column like fields) value pairs

- INSERT shareprice,location=uk,currency=gbp price=20
       <measurement><tag>                     <field value pair>   
- SELECT * FROM shareprice
- SELECT location, currency, price from shareprice

## Notes on Influx

