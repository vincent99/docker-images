FROM alpine
RUN apk update && apk upgrade && apk add ncurses
ADD test.sh /usr/local/bin/test
ENTRYPOINT ["/usr/local/bin/test"]
