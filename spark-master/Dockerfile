FROM s-urbaniak/oracle-jdk8

RUN apk --update add \
	bash \
	ncurses \
	procps

RUN curl -O \
	http://dl-4.alpinelinux.org/alpine/edge/testing/x86_64/runit-2.1.2-r0.apk \
	&& apk add runit-2.1.2-r0.apk \
	&& rm -f runit-2.1.2-r0.apk

RUN curl \
	--location \
	--retry 3 \
	http://ftp-stud.hs-esslingen.de/pub/Mirrors/ftp.apache.org/dist/spark/spark-1.3.1/spark-1.3.1-bin-cdh4.tgz \
	| gunzip \
	| tar x -C /usr/ \
	&& ln -s /usr/spark-1.3.1-bin-cdh4 /usr/spark

RUN mkdir -p /etc/service/spark
COPY runit/spark/run /etc/service/spark/run

ADD runit/bootstrap.sh /bootstrap.sh
ENTRYPOINT ["/bootstrap.sh"]

