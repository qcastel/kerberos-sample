
start_kdc() {
  /usr/sbin/krb5kdc &
  /usr/sbin/kadmind &
}

main() {
 start_kdc
 sleep infinity
}

main