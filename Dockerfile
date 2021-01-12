FROM golang:1.15.6-alpine3.12

LABEL maintainer="liwenqiang@pwrd.com"

EXPOSE 80

WORKDIR /go/src/app

COPY . .

RUN go get -d -v ./...

RUN go install -v ./...

CMD ["go","run","main.go"]