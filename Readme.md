To build and deploy the application in linux environment,need to install Jenkins, Docker and Kubernetes

Installation of jenkins:-
Step1:- wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
Step2:- sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
Step3:- sudo apt-get update
Step4:- sudo apt-get install jenkins

NOTE:- Before installing jenkins make sure java is installed.

Installation Of Docker:-

Step1:- sudo apt-get update
Step2:- sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
       gnupg-agent \
       software-properties-common
Step3:- sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"

Step4:- sudo apt-get update
Step5:- sudo apt-get install docker-ce docker-ce-cli containerd.io

Installation of kubernetes:-

There are two kube script files one for to set-up master node and another is for to set-up slave node.

To set-up a kubernetes master run the kube-master.sh. Once the script is executed copy the generated token which needs to be exected in salve node to join the k8s cluster.

To set-up slave node run kube-node.sh. Execte "kubectl get nodes" to check the nodes status, it should be ready and execute "kubectl get pods -A -o wide" to list all the pods.
