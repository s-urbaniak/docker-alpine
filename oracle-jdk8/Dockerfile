FROM s-urbaniak/alpine-glibc

ENV JAVA_HOME /usr/jdk1.8.0_45

RUN curl \
	--location \
	--retry 3 \
	--header "Cookie: oraclelicense=accept-securebackup-cookie;" \
	"http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz" \
	| gunzip \
	| tar x -C /usr/ \
	&& ln -s $JAVA_HOME /usr/java \
	&& rm -rf $JAVA_HOME/man

ENV PATH ${PATH}:${JAVA_HOME}/bin

# Alpine Linux doesn't use pam, which means that there is no /etc/nsswitch.conf,
# but Java relies on /etc/nsswitch.conf to check the order of DNS resolving
# (i.e. check /etc/hosts first and then lookup DNS-servers).
# To fix this we just create /etc/nsswitch.conf and add the following line:
RUN echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf

