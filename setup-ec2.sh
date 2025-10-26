#!/bin/bash

# jdk21 install
yum -y install java-21-amazon-corretto-headless.x86_64

# git install
yum -y install git

# clone
cd /home/ec2-user
sudo -u ec2-user git clone https://github.com/namickey/spring-boot3-train.git

# cd
cd /home/ec2-user/spring-boot3-train

# chmod
chmod 755 mvnw

# spring-boot:run
sudo -u ec2-user nohup ./mvnw spring-boot:run &
