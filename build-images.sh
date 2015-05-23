#!/bin/sh
docker build -t s-urbaniak/alpine-glibc alpine-glibc
docker build -t s-urbaniak/alpine-bash alpine-bash
docker build -t s-urbaniak/oracle-jdk8 oracle-jdk8
docker build -t s-urbaniak/oracle-jre8 oracle-jre8
docker build -t s-urbaniak/spark-class spark-class
