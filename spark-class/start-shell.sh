#!/bin/sh

docker run -ti --rm \
	-p 4040:4040 \
	-e 'SPARK_SUBMIT_OPTS=-Djline.terminal=unix' \
	s-urbaniak/spark-class \
	org.apache.spark.repl.Main spark-shell
