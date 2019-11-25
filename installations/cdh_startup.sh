#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_181

echo "::::::: Starting MYSQL :::::::"
service mysql start

sleep 10
echo "::::::: Installing SchemaTool :::::::"
/usr/lib/hive/bin/schematool -dbType mysql -initSchema

echo "::::::: Starting Zookeeper :::::::"
service zookeeper-server start || die "Failed to start zookeeper-server"

echo "::::::: Starting HDFS :::::::"
bash -c 'for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do sudo service $x start ; done'

echo "::::::: Starting YARN :::::::"
service hadoop-yarn-resourcemanager start
service hadoop-yarn-nodemanager start
chmod -R 777 /var/log/hadoop-mapreduce
service hadoop-mapreduce-historyserver start
service hadoop-httpfs start

echo "::::::: Starting Hive :::::::"
#nohup hiveserver2 &
service hive-metastore start
service hive-server2 start
#bash -c 'for x in `cd /etc/init.d ; ls impala-*` ; do sudo service $x start ; done'

echo "::::::: Starting Impala :::::::"
service impala-state-store start
service impala-catalog start
service impala-server start

echo "::::::: Starting Hue :::::::"
service hue start

echo "::::::: Starting Kudu :::::::"
servcie kudu-master start
service kudu-tserver start

exec bash