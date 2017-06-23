FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y curl ca-certificates make supervisor --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install --fix-missing -y nodejs


WORKDIR /
RUN npm install slack-irc
ADD config.json.tpl /
ADD run.sh /
ADD supervisord.conf /
CMD ["-n", "-c", "/supervisord.conf"]
ENTRYPOINT ["/usr/bin/supervisord"]
