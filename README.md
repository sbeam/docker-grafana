# Docker image to run grafana

simple nginx container to run static graphana files. 

Nginx runs on a special port, 8090, to avoid conflicts on the same host with 80. This could be changed.

Hook in graphana config with a volume covering the config file at /opt/grafana/config.js, eg

    docker run -p 80:8090 --rm --link influxdb:influxdb -v /home/ubuntu/graphana/config.js:/opt/grafana/config.js sbeam/grafana
