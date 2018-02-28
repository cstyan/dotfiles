RIPGREP_VERSION=0.8.1
RIPGREP_DEB=ripgrep_"$RIPGREP_VERSION"_amd64.deb
DOWNLOAD_URL="https://github.com/BurntSushi/ripgrep/releases/download/$RIPGREP_VERSION/$RIPGREP_DEB"

curl -LO $DOWNLOAD_URL
dpkg -i $RIPGREP_DEB
rm $RIPGREP_DEB