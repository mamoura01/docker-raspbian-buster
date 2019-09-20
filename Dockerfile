FROM scratch
MAINTAINER mamoura01 <mamoura01@github.com>

ADD raspbian.image.tar.xz /

ENV DEBIAN_FRONTEND noninteractive