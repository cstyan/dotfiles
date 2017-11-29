TELEGRAM_VERSION=1.1.23

curl -O https://updates.tdesktop.com/tlinux/tsetup."$TELEGRAM_VERSION".tar.xz
tar -xvf tsetup."$TELEGRAM_VERSION".tar.xz
mv Telegram /opt/telegram
ln -sf /opt/telegram/Telegram /usr/bin/telegram
rm tsetup."$TELEGRAM_VERSION".tar.xz
