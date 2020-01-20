FROM google/cadvisor:v0.32.0 AS cadvisor

FROM alpine:3.11.3
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

RUN apk --no-cache add libc6-compat device-mapper findutils zfs thin-provisioning-tools ;\
    echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf ;\
    rm -rf /var/cache/apk/* /tmp/*

COPY --from=cadvisor /usr/bin/cadvisor /usr/bin/

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget --quiet --tries=1 --spider http://localhost:8080/healthz || exit 1

ENTRYPOINT ["/usr/bin/cadvisor", "-logtostderr"]
