#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_181

echo "Starting Zookeeper"
service zookeeper-server start || die "Failed to start zookeeper-server"

echo "Starting HDFS"
bash -c 'for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do sudo service $x start ; done'

echo "Starting YARN"
service hadoop-yarn-resourcemanager start
service hadoop-yarn-nodemanager start
chmod -R 777 /var/log/hadoop-mapreduce
service hadoop-mapreduce-historyserver start
service hadoop-httpfs start

nohup hiveserver2 &
bash -c 'for x in `cd /etc/init.d ; ls impala-*` ; do sudo service $x start ; done'

echo "Starting Hue"
service hue start