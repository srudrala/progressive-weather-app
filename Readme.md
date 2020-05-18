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

