main() {

    DSS_IP=$(dig +short host.containers.internal)
    if [ -z "$DSS_IP" ]
    then
        DSS_IP=$(dig +short host.docker.internal)
    fi
    echo "$DSS_IP dss.mykerberos.com" >> /etc/hosts
    echo "$(dig +short kerberos-server) mykerberos.com" >> /etc/hosts
    cat /etc/hosts
    kinit -kt /alice.keytab alice
    curl -v  --negotiate -u :  http://dss.mykerberos.com:8082/dip/api/spnego-login
    sleep infinity
}

main