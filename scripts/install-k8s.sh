# MINIKUBE_VERSION=v0.35.0
# HELM_VERSION=v2.13.0
# HELM_TARBALL=helm-"$HELM_VERSION"-linux-amd64.tar.gz

echo "**** Install kubectl ****"
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
# echo "**** Install minikube ****"
# curl -Lo minikube https://storage.googleapis.com/minikube/releases/"$MINIKUBE_VERSION"/minikube-linux-amd64 
# chmod +x minikube 
# mv minikube /usr/local/bin/
# echo "**** Install helm ****"
# curl -LO https://kubernetes-helm.storage.googleapis.com/"$HELM_TARBALL"
# tar -zxvf "$HELM_TARBALL"
# rm "$HELM_TARBALL"
# chmod +x linux-amd64/helm
# mv linux-amd64/helm /usr/local/bin/
# rm -rf linux-amd64
# echo "**** Install kvm & libvirt ****"
# sudo apt install libvirt-bin qemu-kvm
# sudo usermod -a -G libvirtd $(whoami)