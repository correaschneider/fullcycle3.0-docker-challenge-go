FROM golang:1.17-alpine AS builder

WORKDIR /usr/local/app

COPY . .

RUN go build -v -o /usr/local/bin/app ./...

CMD ["go", "run", "."]