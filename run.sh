#!/bin/bash

sed -e "s/{{INFLUXDB_DATABASE}}/$INFLUXDB_DATABASE/"  -e "s/{{INFLUXDB_USERNAME}}/$INFLUXDB_USERNAME/" -e "s/{{INFLUXDB_PASSWORD}}/$INFLUXDB_PASSWORD/" grafana/config.js.template > /opt/grafana/config.js

/usr/sbin/nginx
