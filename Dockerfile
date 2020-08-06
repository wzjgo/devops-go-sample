FROM golang:1.11.3-alpine3.8 as builder

WORKDIR /go/src/kubesphere.io/devops-go-sample/

COPY . .

RUN go build -o main

FROM alpine:latest

COPY --from=builder /go/src/kubesphere.io/devops-go-sample/main /usr/local/bin/

EXPOSE 8080
CMD ["/usr/local/bin/main"]
