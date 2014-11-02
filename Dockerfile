FROM nginx

RUN apt-get install -y wget zip

ENV GRAFANA_VERSION 1.8.1

# Install Grafana
RUN     cd /usr/share/nginx/html && \
        wget -O grafana.zip http://grafanarel.s3.amazonaws.com/grafana-$GRAFANA_VERSION.zip &&\
        unzip grafana.zip && rm grafana.zip &&\
        mv grafana-$GRAFANA_VERSION/* .

# Configure Grafana
#ADD     ./grafana/config.js /opt/grafana/config.js
#add     ./grafana/scripted.json /opt/grafana/app/dashboards/default.json
