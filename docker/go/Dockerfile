FROM golang:1.17-alpine

WORKDIR /usr/src/app

RUN go mod init rocks && \
    touch rocks.go && \
    echo 'package main' >> rocks.go && \
    echo '' >> rocks.go && \
    echo 'import "fmt"' >> rocks.go && \
    echo '' >> rocks.go && \
    echo 'func main() {' >> rocks.go && \
    echo '    fmt.Println("Code.education Rocks!")' >> rocks.go && \
    echo '}' >> rocks.go

RUN go build -v -o /usr/local/bin/app ./...

CMD ["go", "run", "."]