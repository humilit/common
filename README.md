# common base for Docker

* base of [humilit/common-php](https://github.com/humilit/common-php)

## integrated tools

### apk-add-recipe

allows installation of apk packages via recipe files, 
saves multiline RUN commands in Dockerfile and allows for comments

### apk-cache-flush

clears apk cache after package install to reduce final container size


## configuration

### SMTP_HOSTNAME

default: ``smtp``

the host that will send emails queued by `sendmail`
 
there should be an accordingly named container in your stack with an smtp interface, like [humilit/postfix](https://hub.docker.com/r/humilit/postfix).
Sollte der SMTP-Server eine Authentifizierung benötigen:

set the IP-range of the `smtp` container to send emails without authentication

### SMTP_AUTH_USERNAME and SMTP_AUTH_PASSWORD

set `SMTP_AUTH_USERNAME` and `SMTP_AUTH_PASSWORD` if authentication is required

### SMTP_PORT

default: `587` if `SMTP_STARTTLS` is `yes` , else `25`

### SMTP_STARTTLS

default: ``no``

if `STARTTLS` should be used, set this to `yes`. 
apt package `openssl` is already installed, so `sendmail` can send encrypted mails.

