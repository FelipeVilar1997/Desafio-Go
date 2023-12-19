FROM golang:1.17.2-alpine3.14 as builder

WORKDIR /usr/app

COPY /golang/ .

RUN go build -o /main hello.go

FROM scratch

WORKDIR /

COPY --from=builder /main /main

EXPOSE 8080

ENTRYPOINT ["/main"]