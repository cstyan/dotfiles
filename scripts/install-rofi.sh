ROFI_VER=rofi_1.4.2-1
ROFI_DEB="$ROFI_VER"_amd64.deb
ROFI_URL=http://launchpadlibrarian.net/344694647/"$ROFI_DEB"

libxkb_url=http://launchpadlibrarian.net/337252168/libxkbcommon0_0.7.1-2_amd64.deb
libxkb_common_url=http://launchpadlibrarian.net/337252162/libxkbcommon-dev_0.7.1-2_amd64.deb
libxkb_x11_url=http://launchpadlibrarian.net/337252167/libxkbcommon-x11-0_0.7.1-2_amd64.deb
libxkb_x11_dev_url=http://launchpadlibrarian.net/337252165/libxkbcommon-x11-dev_0.7.1-2_amd64.deb

curl -LO "$libxkb_url"
dpkg -i libxkbcommon0_0.7.1-2_amd64.deb
rm libxkbcommon0_0.7.1-2_amd64.deb

curl -LO "$libxkb_common_url"
dpkg -i libxkbcommon-dev_0.7.1-2_amd64.deb
rm libxkbcommon-dev_0.7.1-2_amd64.deb

curl -LO "$libxkb_x11_url"
dpkg -i libxkbcommon-x11-0_0.7.1-2_amd64.deb
rm libxkbcommon-x11-0_0.7.1-2_amd64.deb

curl -LO "$libxkb_x11_dev_url"
dpkg -i libxkbcommon-x11-dev_0.7.1-2_amd64.deb
rm libxkbcommon-x11-dev_0.7.1-2_amd64.deb

curl -LO "$ROFI_URL"
dpkg -i "$ROFI_DEB"
rm "$ROFI_DEB"