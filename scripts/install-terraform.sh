TF_VERSION=0.12.9
TF_ZIP=terraform_"$TF_VERSION"_linux_amd64.zip

# https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip

curl -LO https://releases.hashicorp.com/terraform/"$TF_VERSION"/"$TF_ZIP"
unzip $TF_ZIP
mv terraform /usr/local/bin/.
rm $TF_ZIP
