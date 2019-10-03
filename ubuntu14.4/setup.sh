#!/usr/bin/env bash
hdf_version=3.1.2.0
hdf_mpack_version=3.1.2.0-7

service ambari-server stop
ambari-server setup --jdbc-db=mysql --jdbc-driver=/usr/share/java/mysql-connector-java.jar

wget http://public-repo-1.hortonworks.com/HDF/ubuntu14/3.x/updates/${hdf_version}/tars/hdf_ambari_mp/hdf-ambari-mpack-${hdf_mpack_version}.tar.gz -P /tmp
ambari-server install-mpack --verbose --mpack=/tmp/hdf-ambari-mpack-${hdf_mpack_version}.tar.gz

service ambari-server start

#apt-get install git -y
#git clone https://github.com/hortonworks-gallery/ambari-zeppelin-service.git  /var/lib/ambari-server/resources/stacks/HDP/2.4/services/ZEPPELIN

#ls /var/lib/ambari-server/resources/mpacks/
#ambari-server uninstall-mpack --mpack-name=hdf-ambari-mpack --verbose



