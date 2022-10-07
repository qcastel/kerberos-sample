FROM ubuntu:22.04

RUN apt update  && apt upgrade
RUN apt install -y curl vim iputils-ping krb5-user systemd dnsutils

COPY krb5.* /etc/
COPY start.sh /
COPY alice.keytab /
RUN chmod +x /start.sh

CMD /start.sh