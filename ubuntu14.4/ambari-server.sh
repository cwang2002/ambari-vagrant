#!/usr/bin/env bash
wget -nv http://public-repo-1.hortonworks.com/ambari/ubuntu16/2.x/updates/2.6.1.0/ambari.list -O /etc/apt/sources.list.d/ambari.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com B9733A7A07513CAD
apt-get update
apt-get install ambari-server -y
#apt-get install git -y

#git clone https://github.com/hortonworks-gallery/ambari-zeppelin-service.git  /var/lib/ambari-server/resources/stacks/HDP/2.4/services/ZEPPELIN

#vagrant ssh into the machine, then
#ambari-server setup
#service ambari-server start
