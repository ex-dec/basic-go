FROM golang:1.20-bookworm

COPY ./src/*.go /usr/src/app/

WORKDIR /usr/src/app/

RUN go mod init test

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux go build -o /test-go

EXPOSE 80

CMD ["/test-go"]
