GO_VERSION=go1.24.2.linux-amd64.tar.gz

rm -rf /usr/local/bin/go*
rm -rf /usr/local/go
curl -O https://storage.googleapis.com/golang/$GO_VERSION
tar -zxvf $GO_VERSION
sudo mv go /usr/local/
rm $GO_VERSION
ln -s /usr/local/go/bin/* /usr/local/bin/
