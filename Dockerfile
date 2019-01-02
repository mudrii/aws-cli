From alpine:latest

RUN deluser guest ; delgroup users
RUN addgroup -g 985 -S users
RUN adduser -S -G users -u 1000 -s /bin/sh -h /home/mudrii mudrii

# Version https://github.com/aws/aws-cli/releases
ENV AWS_CLI_VERSION 1.16.81 

RUN apk --no-cache update && \
    apk --no-cache add \
    python \
    py-pip \
    groff \
    less \
    mailcap \
    jq && \
		pip install --upgrade pip && \
    pip --no-cache-dir install --upgrade awscli==${AWS_CLI_VERSION} && \
    apk --purge del py-pip 

USER mudrii

#VOLUME /mudrii/.aws
#VOLUME /aws

#WORKDIR /aws
