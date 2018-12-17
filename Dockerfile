FROM alpine:3.8
LABEL maintainer="robert.brendler+github@gmail.com"

COPY content /

RUN common-setup

ENTRYPOINT ["common-entrypoint"]
CMD ["sh"]
