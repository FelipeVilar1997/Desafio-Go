FROM golang:1.17.2-alpine3.14 

WORKDIR /usr/app

COPY /golang/hello.go .

RUN go mod init hello && \
  go build
