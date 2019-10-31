FROM pandoc/latex:2.7.3

RUN apk update && apk add make

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
