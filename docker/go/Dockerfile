FROM golang:1.17-alpine AS builder

WORKDIR /usr/src/app

RUN go mod init rocks

COPY ./rocks.go .

RUN go build -v -o /usr/local/bin/app ./...

CMD ["go", "run", "."]