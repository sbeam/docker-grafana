# Docker image to run grafana

simple nginx container to run static graphana files based on official nginx image.

Hook in graphana config with a volume covering the config file at `/usr/share/nginx/html/config.js`, eg

    docker run -p 8088:80 --rm -v /home/sbeam/work/grafana/config.js:/usr/share/nginx/html/config.js sbeam/grafana
