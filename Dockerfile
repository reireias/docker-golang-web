FROM golang:alpine AS build-env

WORKDIR /go/src/app
COPY . .
RUN CGO_ENABLED=0 go build -o hello main.go
ENV HOGE hoge

FROM busybox
COPY --from=build-env /go/src/app/hello /usr/local/bin/hello

CMD ["/usr/local/bin/hello"]
