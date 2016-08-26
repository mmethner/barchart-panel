FROM grafana/grafana:3.1.1

MAINTAINER "Mathias Methner <mathiasmethner@web.de>"

ADD . /data/plugins/grafana-barchart-panel/

ENTRYPOINT ["/usr/sbin/grafana-server", "--homepath=/usr/share/grafana", "--config=/etc/grafana/grafana.ini", "cfg:default.paths.data=/var/lib/grafana", "cfg:default.paths.logs=/var/log/grafana"]
