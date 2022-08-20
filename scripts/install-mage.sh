MAGE_VERSION=1.13.0
MAGE_NAME=mage_"$MAGE_VERSION"_Linux-64bit
MAGE_TARBALL="$MAGE_NAME".tar.gz

echo $MAGE_VERSION
echo $MAGE_TARBALL

curl -LO https://github.com/magefile/mage/releases/download/v"$MAGE_VERSION"/"$MAGE_TARBALL"
tar -zxvf $MAGE_TARBALL && rm $MAGE_TARBALL
mv mage /usr/local

ln -s /usr/local/mage /usr/local/bin/

# ln -sf ~/mage/mage /usr/local/bin/mage

# https://github.com/magefile/mage/releases/download/v1.13.0/mage_1.13.0_Linux-64bit.tar.gz