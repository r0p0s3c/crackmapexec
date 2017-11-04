FROM alpine:latest

LABEL maintainer="jonas@thambert.com"

WORKDIR "/root"

RUN  apk add --no-cache python libssl1.0 libffi-dev python-dev py2-pip openssl openssl-dev make file libc-dev gcc && \
  pip install crackmapexec && \
  apk del --no-cache libssl1.0 libffi-dev python-dev py2-pip openssl-dev make file libc-dev gcc

ENTRYPOINT ["cme"]
