FROM debian:jessie
MAINTAINER Murphy McMahon <pandeiro.docker@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y dist-upgrade
RUN apt-get install -y \
    libicu-dev python ruby bison flex cmake build-essential ninja-build git gperf

RUN git clone git://git.webkit.org/WebKit.git \
    && ./WebKit/Tools/Scripts/build-webkit --jsc-only \
    && mv /tmp/WebKit/WebKitBuild/Release/bin/jsc /usr/bin/ \
    && rm -rf WebKit

ENTRYPOINT ["/usr/bin/jsc"]
