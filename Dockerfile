FROM golang:1.9.3-alpine3.6

WORKDIR /go/src/app

COPY . .

RUN go get -d -v ./...

RUN go install -v ./...
CMD ["app"]