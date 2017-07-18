FROM alpine:latest

WORKDIR /tmp/build

ENV runDependencies curl jq bash gettext
ENV kubectlURL https://storage.googleapis.com/kubernetes-release/release/v1.6.6/bin/linux/amd64/kubectl

RUN apk --no-cache add ${runDependencies}; \
    curl -L -o /usr/local/bin/kubectl ${kubectlURL}; \
    chmod +x /usr/local/bin/kubectl

COPY bin/* /opt/resource/

CMD /usr/local/bin/kubectl
