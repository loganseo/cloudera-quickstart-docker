# Version: 0.1

FROM ubuntu:16.04

COPY files/jdk-8u181-linux-x64.tar.gz /tmp/jdk-8u181-linux-x64.tar.gz
ADD installations/cdh.sh /tmp/cdh.sh
ADD installations/cdh_startup.sh /tmp/cdh_startup.sh
ADD conf/cloudera.pref /etc/apt/preferences.d/cloudera.pref
#ADD conf/hadoop-env.sh /etc/profile.d/hadoop-env.sh
#ADD conf/spark-env.sh /etc/profile.d/spark-env.sh
#ADD conf/spark-defaults.conf /etc/spark/conf/spark-defaults.conf

ENV TERM xterm

RUN chmod +x /tmp/cdh.sh && bash /tmp/cdh.sh
RUN chmod +x /tmp/cdh_startup.sh

COPY files/mysql-connector-java-5.1.34-bin.jar /usr/share/java/mysql-connector-java-5.1.34-bin.jar
ADD conf/yarn-site.xml /etc/hadoop/conf/yarn-site.xml
ADD conf/core-site.xml /etc/hadoop/conf/core-site.xml
ADD conf/hadoop-env.sh /etc/hadoop/conf/hadoop-env.sh
ADD conf/mapred-site.xml /etc/hadoop/mapred-site.xml
ADD conf/hive-site.xml /etc/hive/hive-site.xml
ADD conf/core-site.xml /etc/hadoop-httpfs/conf/core-site.xml
ADD conf/kudu-master.gflag /etc/kudu/conf/kudu-master.gflag
ADD conf/kudu-tserver.gflag /etc/kudu/conf/kudu-tserver.gflag
ADD conf/my.cnf /etc/my.cnf

# private and public mapping
EXPOSE 2181:2181
EXPOSE 8020:8020
EXPOSE 8888:8888
EXPOSE 8088:8088
EXPOSE 19888:19888
EXPOSE 8042:8042
EXPOSE 8080:8080
EXPOSE 7077:7077
EXPOSE 7050:7050
EXPOSE 8050:8050
EXPOSE 7051:7051
EXPOSE 8051:8051
EXPOSE 10000:10000
EXPOSE 50070:50070
EXPOSE 14000:14000
EXPOSE 21000:21000
EXPOSE 25010:25010
EXPOSE 25020:25020
EXPOSE 21050:21050
EXPOSE 22000:22000