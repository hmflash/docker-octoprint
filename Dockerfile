FROM lsiobase/alpine:3.5

RUN apk add --no-cache \
    git \
    python2 \
    python2-dev \
    py2-pip \
    gcc \
    libc-dev \
    linux-headers \
    socat \
  && pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir setuptools \
  && rm -rf /var/cache/apk /root/.cache /tmp/*

#RUN git clone https://github.com/foosel/OctoPrint.git /opt/octoprint
#RUN pip install /opt/octoprint

COPY root/ /

VOLUME /config
EXPOSE 5000

