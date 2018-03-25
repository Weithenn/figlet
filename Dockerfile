FROM alpine

RUN apk update && apk upgrade
RUN apk add figlet

ADD https://github.com/openfaas/faas/releases/download/0.7.1/fwatchdog /usr/bin
RUN chmod +x /usr/bin/fwatchdog

ENV fprocess="figlet"
CMD ["fwatchdog"]
