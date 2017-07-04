PROM_VERSION=1.7.1
PROM_NAME=prometheus-"$PROM_VERSION".linux-amd64
PROM_TARBALL="$PROM_NAME".tar.gz

curl -LO https://github.com/prometheus/prometheus/releases/download/v"$PROM_VERSION"/"$PROM_TARBALL"
tar -zxvf $PROM_TARBALL && rm $PROM_TARBALL
mv $PROM_NAME ~/prometheus

ln -sf ~/prometheus/prometheus /usr/local/bin/prometheus
ln -sf ~/prometheus/promtool /usr/local/bin/promtool