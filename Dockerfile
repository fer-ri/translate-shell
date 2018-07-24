FROM alpine:3.8

MAINTAINER Ferri Sutanto <greenhouseprod@gmail.com>

RUN apk add --no-cache \
    bash \
    gawk;

RUN wget git.io/trans \
    && chmod +x trans;

CMD ["--version"]

ENTRYPOINT ["./trans"]