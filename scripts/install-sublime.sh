SUBL_VERSION=3143
curl -O https://download.sublimetext.com/sublime-text_build-"$SUBL_VERSION"_amd64.deb
dpkg -i sublime-text_build-"$SUBL_VERSION"_amd64.deb
rm sublime-text_build-"$SUBL_VERSION"_amd64.deb
