FROM alpine:3.9

RUN apk --update add \
    python \
    py-pip \
    curl \
    groff

RUN pip install --upgrade awscli==1.16.149

ENTRYPOINT ["/usr/bin/aws"]

