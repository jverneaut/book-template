FROM pandoc/latex:2.7.3

RUN apt-get update && apt-get install make

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT [ "/entrypoint.sh" ]
