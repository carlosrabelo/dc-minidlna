FROM alpine:3.14.0

LABEL maintainer Carlos Rabelo "developer@carlosrabelo.com.br"
LABEL version "1.0"

RUN apk --no-cache add minidlna

COPY entrypoint.sh /

RUN chmod +x entrypoint.sh

EXPOSE 8200

ENTRYPOINT ["/entrypoint.sh"]
