FROM python:alpine as buildenv
RUN apk add --no-cache alpine-sdk libffi-dev openssl-dev
RUN mkdir /wormhole 
WORKDIR /wormhole
RUN pip install -t /wormhole magic-wormhole 

FROM python:alpine
COPY  --from=buildenv /wormhole /wormhole
ENV PYTHONPATH=/wormhole
ENTRYPOINT [ "/wormhole/bin/wormhole" ]

