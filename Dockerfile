ARG ARCH="amd64"
ARG OS="linux"
#FROM quay.io/prometheus/busybox-${OS}-${ARCH}:glibc
FROM prom/busybox:glibc
LABEL maintainer="Trey Dockendorf <treydock@gmail.com>"
ARG ARCH="amd64"
ARG OS="linux"
COPY .build/${OS}-${ARCH}/ssh_exporter /ssh_exporter
EXPOSE 9312
ENTRYPOINT ["/ssh_exporter"]
