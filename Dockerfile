FROM golang:1.15.0

ENV GO111MODULE=on
WORKDIR /app/
VOLUME [ "/app/" ]

# Install GO Packages
COPY go.* .
RUN go mod download
