FROM golang:1.21.4

WORKDIR /go/src/url-shortener

EXPOSE 8080

COPY . .

WORKDIR /go/src/url-shortener/cmd/url-shortener

ENV CONFIG_PATH /go/src/url-shortener/config/local.yaml
ENV STORAGE_PATH /go/src/url-shortener/storage/storage.db

RUN go mod download

RUN go build -o /go/src/url-shortener/cmd/url-shortener/main .

CMD ["/go/src/url-shortener/cmd/url-shortener/main"]