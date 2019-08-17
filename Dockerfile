# Version: 0.1

FROM ubuntu:16.04

COPY files/jdk-8u181-linux-x64.tar.gz /tmp/jdk-8u181-linux-x64.tar.gz
ADD installations/cdh.sh /tmp/cdh.sh
ADD installations/cdh_startup.sh /tmp/cdh_startup.sh
ADD conf/cloudera.pref /etc/apt/preferences.d/cloudera.pref
ADD conf/hadoop-env.sh /etc/profile.d/hadoop-env.sh
ADD conf/spark-env.sh /etc/profile.d/spark-env.sh
ADD conf/spark-defaults.conf /etc/spark/conf/spark-defaults.conf

ENV TERM xterm

RUN chmod +x /tmp/cdh.sh && bash /tmp/cdh.sh

ADD conf/yarn-site.xml /etc/hadoop/conf/yarn-site.xml
ADD conf/kudu-master.gflag /etc/kudu/conf/
ADD conf/kudu-tserver.gflag /etc/kudu/conf/

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

#RUN chmod +x /tmp/cdh_startup.sh && bash /tmp/cdh_startup.sh