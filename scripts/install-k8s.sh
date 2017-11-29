MINIKUBE_VERSION=v0.23.0

echo "**** Install kubectl ****"
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
echo "**** Install minikube ****"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/"$MINIKUBE_VERSION"/minikube-linux-amd64 
chmod +x minikube 
mv minikube /usr/local/bin/
echo "**** Install kvm & libvirt ****"
sudo apt install libvirt-bin qemu-kvm
sudo usermod -a -G libvirtd $(whoami)