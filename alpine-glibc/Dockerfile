FROM alpine:3.1

RUN apk --update add \
	curl

RUN curl -O \
	"https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk" \
	&& apk add --allow-untrusted glibc-2.21-r2.apk \
	&& rm -f glibc-2.21-r2.apk

RUN curl -O \
	"https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-bin-2.21-r2.apk" \
	&& apk add --allow-untrusted glibc-bin-2.21-r2.apk \
	&& rm -f glibc-bin-2.21-r2.apk

RUN /usr/glibc/usr/bin/ldconfig /lib /usr/glibc/usr/lib
