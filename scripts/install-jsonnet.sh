pushd /tmp
git clone https://github.com/google/jsonnet.git
cd jsonnet
make
mv jsonnet /usr/local/bin/.
mv jsonnetfmt /usr/local/bin/.
cd ..
rm -rf jsonnet
popd