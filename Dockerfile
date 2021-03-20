FROM golang:1.16.2

ENV GO111MODULE=on
WORKDIR /app/
VOLUME [ "/app/" ]

# Install dependencies
RUN apt update && apt install -y \
        git \
        git-lfs \
        make \
        build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install golangci lint
COPY scripts/install_golangci-lint.sh .
RUN ./install_golangci-lint.sh

# Install GO Packages
COPY go.* .
RUN go mod download

ENTRYPOINT [ "make" ]
