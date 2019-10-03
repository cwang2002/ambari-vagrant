#!/usr/bin/env bash
ambari_version=2.6.2.0
wget -nv http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/${ambari_version}/ambari.list -O /etc/apt/sources.list.d/ambari.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com B9733A7A07513CAD
apt-get update
apt-get install libmysql-java
apt-get install ambari-server -y

ambari-server setup
