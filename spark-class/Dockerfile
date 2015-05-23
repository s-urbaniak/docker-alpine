FROM s-urbaniak/oracle-jdk8

RUN apk --update add \
	bash \
	ncurses \
	procps

RUN curl \
	--location \
	--retry 3 \
	http://ftp-stud.hs-esslingen.de/pub/Mirrors/ftp.apache.org/dist/spark/spark-1.3.1/spark-1.3.1-bin-cdh4.tgz \
	| gunzip \
	| tar x -C /usr/ \
	&& ln -s /usr/spark-1.3.1-bin-cdh4 /usr/spark

ENTRYPOINT ["/usr/spark/bin/spark-class"]

