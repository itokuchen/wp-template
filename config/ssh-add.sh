#!/bin/sh

# apt-get update -y
# apt-get install -y expect

PW=''

eval `ssh-agent`

expect -c "
set timeout 3
spawn ssh-add
expect \"Enter passphrase for /home/.ssh/id_rsa:\"
send \"${PW}\n\"
interact
"

/bin/bash
