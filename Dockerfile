FROM alpine:latest

RUN apk update && apk add ca-certificates && update-ca-certificates && apk add openssl

RUN wget -qO /usr/local/bin/force https://s3-us-west-2.amazonaws.com/force-cli/heroku/force/v0.22.74/linux-amd64/force
RUN chmod 755 /usr/local/bin/force
