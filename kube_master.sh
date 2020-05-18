#!/bin/bash
sudo apt-get update
sudo swapoff -a
sudo apt-get install -y apt-transport-https curl openssh-server
sudo apt-get update
sudo bash -c "curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -"
sudo bash -c 'cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF'
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sleep 10
sudo cp /etc/systemd/system/kubelet.service.d/10-kubeadm.conf.dpkg-new  /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
sudo chown -R jenkins:jenkins /etc/systemd/system/kubelet.service.d/
echo 'Environment="cgroup-driver=systemd/cgroup-driver=cgroupfs"' >> /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
sleep 10
sudo kubeadm init --pod-network-cidr=10.244.0.0/16  --apiserver-advertise-address=<IP address of node>
sudo chown -R jenkins:jenkins /etc/kubernetes/
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
sleep 60
sudo mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
exit
