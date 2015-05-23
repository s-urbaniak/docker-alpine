FROM s-urbaniak/alpine-glibc

RUN echo 'http://dl-4.alpinelinux.org/alpine/edge/testing' >>/etc/apk/repositories

RUN apk --update add \
	alpine-sdk \
	build-base \
	autoconf \
	automake \
	openjdk7 \
	libtool \
	python-dev \
	py-boto	\
	apr-dev \
	zlib-dev \
	curl-dev \
	subversion-dev \
	cyrus-sasl-dev \
	ca-certificates \
	bash

ENV JAVA_HOME /usr/lib/jvm/default-jvm

# install ca certificates for maven
RUN find /usr/share/ca-certificates/mozilla/ -name *.crt -exec keytool -import -trustcacerts \
	-keystore /usr/lib/jvm/java-1.7-openjdk/jre/lib/security/cacerts -storepass changeit -noprompt \
	-file {} -alias {} \; && \
	keytool -list -keystore /usr/lib/jvm/java-1.7-openjdk/jre/lib/security/cacerts --storepass changeit

# install maven
RUN curl -O http://ftp.ps.pl/pub/apache/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz
RUN tar -xz -C /usr/ -f /apache-maven-3.3.3-bin.tar.gz \
	&& ln -s /usr/apache-maven-3.3.3 /usr/mvn \
	&& rm -f /apache-maven-3.3.3-bin.tar.gz

ENV PATH ${PATH}:/usr/mvn/bin

