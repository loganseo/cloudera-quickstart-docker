# cloudera-quickstart-docker

## Installed Softwares
- ubuntu 16.04
- MySQL 5.7.28
- CDH 6.3.2
  - Zookeeper 3.4.5
  - Hadoop 3.0.0
  - Hive 2.1.1
  - Impala 3.2.0
  - Spark 2.4.0
  - Kudu 1.10.0
  - Hue 4.3.0

## 1. Docker Build
```bash
$ docker build -t loganseo/cloudera-quickstart-docker:cdh6.3.2 -f Dockerfile .
```

## 2. Docker container 실행
**1) docker Image 확인**
```bash
$ docker images
loganseo/cloudera-quickstart-docker   cdh6.3.2            b5966f9a7d96        6 days ago          4.07GB
```

**2) docker container 실행 & 서비스 start up**
```bash
$ docker run --hostname=quickstart.cloudera --privileged=true -t -i -p 8888:8888 -p 8050:8050 -p 8051:8051 -p 25000:25000 -p 25010:25010 -p 25020:25020 -p 9870:9870 -p 8088:8088 -p 50070:50070 -p 14000:14000 -p 3306:3306  loganseo/cloudera-quickstart-docker:cdh6.3.2 /tmp/cdh_startup.sh
```

## WebUI 접속 정보
- [Apache Impala Daemon](http://localhost:25000/)
- [Apache Impala StateStore](http://localhost:25010/)
- [Apache Impala Catalog](http://localhost:25020/)
- [Hue](http://localhost:8888/)
- [Namenode information](http://localhost:9870/dfshealth.html#tab-overview)
- [YARN Resource Manager - All Applications](http://localhost:8088/cluster)
- [Kudu Master](http://localhost:8051)
- [Kudu Tablet Server](http://localhost:8050/)

## Sample Impala Queries
```sql
show databases;

create database test;

CREATE TABLE my_first_table
(
  id BIGINT,
  name STRING,
  PRIMARY KEY(id)
)
PARTITION BY HASH PARTITIONS 3
STORED AS KUDU
TBLPROPERTIES("kudu.master_addresses" = "localhost:7051", "kudu.num_tablet_replicas" = "1");
```

## Ports
- [Ports | 6.3.x | Cloudera Documentation](https://docs.cloudera.com/documentation/enterprise/latest/topics/cm_ig_ports.html)

## Container ID 확인 및 Container shell 접속
```bash
docker ps -a
docker exec -it [Container ID] /bin/bash
```

## Container 정지
`docker stop [Container ID]`

## Container 삭제
`docker rm [Container ID]`

## Docker Image 삭제
`docker rmi -f [image ID]`