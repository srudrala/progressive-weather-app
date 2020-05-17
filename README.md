# progressive-weather-app
A local weather app that fetches weather forecast from Openweathermap.org. A Progressive Web App built with Vue.js.
Assignment :

1. Created AWS Account
2. created GitHub Account

Installation kubernetes and setup cluster :

 Created 2 servers , named as master and node
install dependency:
sudo -i
apt-get install ebtables ethtool
Reboot again
Step 2: Install kubeadm
Change to root:
sudo su
Install https support:
apt-get update && apt-get install -y apt-transport-https
Get kubernetes repo key:
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
Add kubernetes repo to manifest:
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
Install kubeadm and docker:
apt-get update && apt-get install -y kubelet kubeadm kubectl docker.io
Step 3: Create the cluster
Change to root:
sudo su
Initial the kubeadm:
kubeadm init --pod-network-cidr=192.168.0.0/16
After a while, you will get following output:
Your Kubernetes master has initialized successfully!
To start using your cluster, you need to run the following as a regular user:
mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config
You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/
You can now join any number of machines by running the following on each node
as root:
kubeadm join 10.91.4.105:6443 --token alpia1.8cjc1yfv5ezganq7 --discovery-token-ca-cert-hash sha256:3f2da2fa1967b8e974b9097fcdd15c66e0d136db5b1f08b3db7fe45c3e2b790b
Change to regular user:
exit
Copy kubectl config:
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config


add network to the master kubernete 

$ kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl

execute command kubectl  get  node to check master and node status

NPM installation 

npm install
apt-get install nodejs
apt-get install git

jenkins installation and setup
sudo apt install default-jre
First, we’ll add the repository key to the system.
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
Next, we’ll append the Debian package repository address to the server’s sources.list:
deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
To set up our installation, we’ll visit Jenkins on its default port, 8080, using the server domain name or IP address: http://ip_address_or_domain_name:8080

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

copy the key paste it into “Administrator password” field, then click “Continue”. The next screen presents the option of installing suggested plugins or selecting specific plugins.

Open the Jenkins server and clone the  github repo
Sudo git clone “repositoryname”
go to manage jenkins and install git plugin and nodejs plugin
go to global tool configuration and configure the nodejs and git tools

Go to Jenkins -  create job 
                 |
                 select freestyle project
                 |
                 configure the job
                 
                 
        
                 build
