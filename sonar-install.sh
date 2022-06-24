#!/bin/bash
#Author: Masee Olga: email
#Date:  June 20, 2022 
echo "We are installing Sonarqube on CentOS7"

sudo yum update -y
sudo yum install java-11-openjdk-devel -y
   	sudo yum install java-11-openjdk -y
	sleep 2
   	cd /opt
   	sudo yum install wget -y
   	sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
   	sudo unzip /opt/sonarqube-9.3.0.51899.zip
	# Checking what Java version, you are working with since the current SonarQube only works with Java 11.
java -version
   	sudo yum install java-11-openjdk* -y
   	sudo yum remove java-1.8* -y
   	java -version
   	cd sonarqube-9.3.0.51899/
   	cd bin
   	cd linux-x86-64/
	# do pwd to ensure you are in  /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
	sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
      	vi sonar.sh
## Go to line:  remove # : command should read   RUN_AS_USER=vagrant 
## save changes.
  	./sonar.sh start
## run command   ip a  to get the current IP address. ping the ip address to make sure it is reachable.  then in the browser type http://ip address or domain name:9000 or ie. 192.168.56.103:9000
echo "SonarQube installed and started successfully"
