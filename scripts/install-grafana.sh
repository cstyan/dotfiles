GRAFANA_VERSION=4.3.2
GRAFANA_NAME=grafana-"$GRAFANA_VERSION"
GRAFANA_TARBALL="$GRAFANA_NAME".linux-x64.tar.gz

wget https://s3-us-west-2.amazonaws.com/grafana-releases/release/"$GRAFANA_TARBALL"
tar -zxvf $GRAFANA_TARBALL && rm $GRAFANA_TARBALL

mv $GRAFANA_NAME ~/grafana

ln -sf ~/grafana/bin/grafana-server /usr/local/bin/grafana
