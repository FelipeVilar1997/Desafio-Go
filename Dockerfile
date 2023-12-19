FROM golang:1.17.2-alpine3.14 as builder

WORKDIR /usr/app

COPY /golang/ .

RUN go build -o /app hello.go

FROM scratch

COPY --from=builder /app /app

EXPOSE 8080

ENTRYPOINT ["/app"]