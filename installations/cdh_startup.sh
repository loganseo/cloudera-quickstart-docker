#!/bin/bash
set -e

echo "::::::: Starting MYSQL :::::::"
rm -rf /var/lib/mysql;
mysqld --initialize --user=mysql && echo -e "\n";
touch /var/lib/mysql/mysql.sock && chown mysql:mysql /var/lib/mysql/mysql.sock;
mkdir -p /var/run/mysqld && chown mysql:mysql /var/run/mysqld;
mysqld_safe --skip-grant-tables --skip-networking &
pid=$!
sleep 10 && echo -e '';
mysql -u root << EOF
FLUSH PRIVILEGES;
SET PASSWORD FOR root@'localhost' = PASSWORD('mysql');
CREATE DATABASE metastore DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE hue DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE oozie DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
GRANT ALL ON metastore.* TO 'hive'@'%' IDENTIFIED BY 'cloudera';
GRANT ALL ON hue.* TO 'hue'@'%' IDENTIFIED BY 'cloudera';
GRANT ALL ON oozie.* TO 'oozie'@'%' IDENTIFIED BY 'cloudera';
FLUSH PRIVILEGES;
exit
EOF
mysqladmin -u root -pmysql shutdown && service mysql start;

echo "::::::: Installing SchemaTool :::::::"
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_181;
/usr/lib/hive/bin/schematool -dbType mysql -initSchema -verbose;

echo "::::::: Starting Zookeeper :::::::"
service zookeeper-server start;

echo "::::::: Starting HDFS :::::::"
bash -c 'for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do sudo service $x start ; done'

echo "::::::: Starting YARN :::::::"
service hadoop-yarn-resourcemanager start;
service hadoop-yarn-nodemanager start;
chmod -R 777 /var/log/hadoop-mapreduce;
service hadoop-mapreduce-historyserver start;
service hadoop-httpfs start;

echo "::::::: Starting Hive :::::::"
#nohup hiveserver2 &
service hive-metastore start;
service hive-server2 start;

echo "::::::: Starting Impala :::::::"
bash -c 'for x in `cd /etc/init.d ; ls impala-*` ; do sudo service $x start ; done';

echo "::::::: Starting Hue :::::::"
/usr/lib/hue/build/env/bin/hue syncdb --noinput;
/usr/lib/hue/build/env/bin/hue migrate;
service hue start;

echo "::::::: Starting Kudu :::::::"
echo '--use_hybrid_clock=false' >> /etc/kudu/conf/master.gflagfile;
echo '--use_hybrid_clock=false' >> /etc/kudu/conf/tserver.gflagfile;
service kudu-master start;
service kudu-tserver start;

exec bash