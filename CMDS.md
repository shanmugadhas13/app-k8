#
#Github - https://github.com/shanmugadhas13/app-k8
#
#BASE VM -->
#
#yum install git docker -y
#sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
#rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#sudo yum upgrade
#sudo amazon-linux-extras install java-openjdk11 -y
#sudo yum install jenkins -y
#systemctl enable jenkins
#systemctl start jenkins
#systemctl enable docker
#systemctl start docker
#usermod -a -G docker jenkins
#sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/bin/docker-compose
#sudo chmod +x /usr/bin/docker-compose
#docker-compose version
#
#Jenkins Plugins -->
#Anchore Container Image Scanner Plugin
#Docker**
#ssh** 
#
#***************************************************************************************************
#>>ANCHORE Scanner engine on BASE --

#
#mkdir /anchore
#curl -O https://engine.anchore.io/docs/quickstart/docker-compose.yaml
#ls
#vi docker-compose.yaml 
#docker-compose up -d
#history
#cd /
#mkdir $HOME/.anchore
#vi $HOME/.anchore/credentials.yaml
   >>default: 
	 ANCHORE_CLI_USER: 'admin' 
     ANCHORE_CLI_PASS: 'anchorepassword' 
     ANCHORE_CLI_URL: 'http://localhost:8228/v1'
#cd /anchore/
#anchore cli
#pip install --upgrade anchorecli
#python3 -m pip install anchorecli
#python3 -m pip uninstall anchorecli
#python3 -m pip install anchorecli
#cd /root/.cache/pip/wheels
#cd /
#cd /root/.cache/pip/wheels
#cd /usr/local/bin
#la
#ls
#ls -lrt
#chmod +x anchore-cli 
#cp -pr anchore-cli /usr/bin/
#cd /
#anchore-cli 
#git clone https://github.com/shanmugadhas13/app-k8
#cd app-k8/
#ls
#docker images
#anchore-cli 
#
#***************************************************************************************************
#Cli anchore commands scan test for image -->

#anchore-cli image add docker.io/shanmugha13/weatherapp:1.0
#anchore-cli image list
#anchore-cli image vuln docker.io/shanmugha13/weatherapp:1.0
#
#***************************************************************************************************
#
#DEV  VM --> 
#yum install docker -y
#curl -LO https://dl.k8s.io/release/v1.25.0/bin/linux/amd64/kubectl
#chmod +x kubectl 
#mv kubectl /usr/bin/
#kubectl 
#curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.16.0/kind-linux-amd64
#chmod +x ./kind
#mv kind /usr/bin/
#systemctl enable docker
#systemctl start docker
#kind create cluster
#mkdir /devproj

***************************************************************************************************





