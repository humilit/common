FROM alpine:3.8
LABEL maintainer="robert.brendler+github@gmail.com"

ENV SMTP_HOSTNAME=smtp
ENV SMTP_STARTTLS=no

COPY content /

RUN common-setup

ENTRYPOINT ["common-entrypoint"]
CMD ["sh"]
