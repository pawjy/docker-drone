FROM golang

RUN \
    mkdir -p /tmp/drone && \
    cd /tmp/drone && \
    git clone https://github.com/drone/drone --depth 1 --branch drone && \
    go install -tags "oss nolimit" ./cmd/drone-server && \
    rm -fr /tmp/drone

CMD ["drone-server"]

## License: Public Domain.
