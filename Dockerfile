FROM golang:alpine

WORKDIR /go/src/app
COPY . .
RUN go build -o hello main.go
ENV HOGE hoge

CMD ["./hello"]
