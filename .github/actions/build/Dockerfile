FROM knsit/pandoc:v2.7.3

USER root

RUN apk add --update make

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
