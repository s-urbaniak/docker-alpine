#!/bin/sh

docker run -ti --rm \
	-p 8080:8080 \
	-p 7077:7077 \
	s-urbaniak/spark-class \
	org.apache.spark.deploy.master.Master -p 7077 --webui-port 8080
