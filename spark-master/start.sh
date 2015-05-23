#!/bin/sh

docker run -ti --rm \
	-e 'SPARK_MASTER_INSTANCE=1' \
	-e 'SPARK_MASTER_PORT=7070' \
	-e 'SPARK_WEBUI_PORT=8080' \
	-p 8080:8080 \
	-p 7077:7077 \
	s-urbaniak/spark-master

