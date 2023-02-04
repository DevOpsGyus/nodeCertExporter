FROM registry.hub.docker.com/amimof/node-cert-exporter as certrepo
FROM busybox:uclibc
LABEL maintainer=theDevopsGyus
# Copy node-cert-exporter file from git registry "https://github.com/amimof/node-cert-exporter"
COPY --from=certrepo /go/bin/node-cert-exporter /go/bin/node-cert-exporter


# All other image config from node-cert-exporter image
COPY ca-certs /etc/ssl/certs/
ENTRYPOINT [ "/go/bin/node-cert-exporter" ]
