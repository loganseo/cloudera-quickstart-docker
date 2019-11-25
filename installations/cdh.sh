#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

function die() { echo "$*" 1>&2 ; exit 1; }

# apt-get clean
# rm -r /var/lib/apt/lists/*
sed -i 's/archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list

apt-get update || die
apt-get install -y --no-install-recommends software-properties-common apt-transport-https || die
apt-get install -y -q wget curl vim sudo lsof axel telnet tzdata net-tools || die

echo '::::::: Installing JDK :::::::'
mkdir /usr/lib/jvm || die "Failed to create Java directory"
tar -xzf /tmp/jdk-8u181-linux-x64.tar.gz -C /usr/lib/jvm || die "Failed to extract JDK"
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.8.0_181/bin/java 100 || die "Failed to install JDK"
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.8.0_181/bin/javac 100 || die "Failed to install JDK"
update-alternatives --set java /usr/lib/jvm/jdk1.8.0_181/bin/java || die  "Failed to set JDK version"
update-alternatives --set javac /usr/lib/jvm/jdk1.8.0_181/bin/javac || die "Failed to set JDK version"
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_181 || die
export PATH=$PATH:$JAVA_HOME/bin || die
echo 'JAVA_HOME="/usr/lib/jvm/jdk1.8.0_181"' >> /etc/environment
source /etc/environment
ln -s /usr/lib/jvm/jdk1.8.0_181 /usr/lib/jvm/java-8-oracle
echo '::::::: JDK Installed :::::::'

echo '::::::: Installing MySQL :::::::'
apt-get install -y mysql-server || die
echo '::::::: MySQL Installed :::::::'

echo '::::::: Installing Cloudera repositories :::::::'
curl -s https://archive.cloudera.com/cdh6/6.3.0/ubuntu1604/apt/archive.key | apt-key add -
echo 'deb [arch=amd64] https://archive.cloudera.com/cdh6/6.3.0/ubuntu1604/apt xenial-cdh6 contrib' > /etc/apt/sources.list.d/cloudera.list
echo 'deb-src https://archive.cloudera.com/cdh6/6.3.0/ubuntu1604/apt xenial-cdh6 contrib' >> /etc/apt/sources.list.d/cloudera.list
apt-get update || die
echo '::::::: Cloudera repositories Installed :::::::'

echo "::::::: Installing Zookeeper :::::::"
apt-get -y install zookeeper-server || die "Failed to install zookeeper-server"
sed -i '/maxClientCnxns/s/=.*/=0/' /etc/zookeeper/conf/zoo.cfg
service zookeeper-server init || die "Failed to init zookeeper-server"
service zookeeper-server start || die "Failed to start zookeeper-server"
service zookeeper-server stop || die "Failed to stop zookeeper-server"
echo "::::::: Zookeeper Installed :::::::"

echo "::::::: Installing Hadoop :::::::"
apt-get -y install hadoop-conf-pseudo hadoop-httpfs || die
sudo -E -u hdfs hdfs namenode -format || die
bash -c 'for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do sudo -E service $x start ; done' || die
/usr/lib/hadoop/libexec/init-hdfs.sh || die

apt-get -y install hive-metastore hive-server2 || die

sudo -E -u hdfs hadoop fs -ls -R / || die

service hadoop-yarn-resourcemanager start || die
service hadoop-yarn-nodemanager start || die
service hadoop-mapreduce-historyserver start || die

sudo -E -u hdfs hdfs dfs -mkdir -p /user/hadoop || die
sudo -E -u hdfs hdfs dfs -chown hadoop /user/hadoop || die
hadoop fs -mkdir -p /tmp || die
sudo -E -u hive hdfs dfs -mkdir -p /user/hive/warehouse || die
hadoop fs -chmod g+w /tmp || die
sudo -E -u hive hdfs dfs -chmod g+w   /user/hive/warehouse || die
echo "::::::: Hadoop Installed :::::::"

echo "::::::: Installing Hue, Impala :::::::"
apt-get -y install hue impala impala-server impala-state-store impala-catalog impala-shell || die
sed -i 's/secret_key=/secret_key=_S@s+D=h;B,s$C%k#H!dMjPmEsSaJR/g' /etc/hue/conf/hue.ini || die
sed -i "s/America\/Los\_Angeles/Asia\/Seoul/g" /etc/hue/conf/hue.ini || die
echo "::::::: Hue, Impala Installed :::::::"

echo "::::::: Installing Spark :::::::"
apt-get -y install spark-core spark-history-server spark-python || die
echo "::::::: Spark Installed :::::::"

echo "::::::: Installing Kudu :::::::"
apt-get -y install kudu kudu-master kudu-tserver libkuduclient-dev libkuduclient0 || die
echo "::::::: Kudu Installed :::::::"