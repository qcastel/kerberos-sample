FROM ubuntu:22.04

RUN apt update  && apt upgrade
RUN apt install -y curl vim iputils-ping krb5-admin-server krb5-kdc systemd dnsutils

COPY krb5.* /etc/
COPY krb5kdc/* /etc/krb5kdc/
COPY krb5kdc-var-lib/* /var/lib/krb5kdc/

COPY start.sh /
RUN chmod +x /start.sh

CMD /start.sh
