FROM golang:1.17-alpine AS builder

WORKDIR /usr/local/app

COPY . .

RUN go build -v -o rocks .

FROM scratch

WORKDIR /usr/local/app

COPY --from=builder /usr/local/app/rocks /usr/bin/

ENTRYPOINT [ "rocks" ]