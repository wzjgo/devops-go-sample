FROM golang:1.14

WORKDIR /go/src/kubesphere.io/devops-go-sample/

COPY . .

RUN go build -o main

EXPOSE 8080
CMD ["./main"]
