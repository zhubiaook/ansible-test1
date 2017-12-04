#!/bin/bash

ssh-keygen -t rsa -N '' -q -f /root/.ssh/id_rsa 

yum -y install expect &> /dev/null

for i in 0 1 2 3 4 5 6 7 8;do
	path="172.18.17.2$i"
	password="224517ok"
/usr/bin/expect <<EOF
spawn ssh-copy-id -i /root/.ssh/id_rsa.pub "$path"
expect {
	"yes/no" { send "yes\n"; exp_continue }
	"password:" { send "$password\n" }
}

expect eof
EOF
done
