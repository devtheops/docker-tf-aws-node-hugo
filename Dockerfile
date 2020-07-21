FROM hashicorp/terraform:latest
RUN apk add --no-cache --virtual .build-deps g++ python3-dev libffi-dev openssl-dev
RUN apk add --no-cache --update nodejs-current python3 py3-pip hugo

RUN pip install --upgrade setuptools awscli

ENTRYPOINT ["/bin/sh", "-c"]