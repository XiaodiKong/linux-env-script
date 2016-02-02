#!/bin/bash

if [ $# -lt 1  ]
then
    echo "help"
    echo "sudo sh adduser.sh <username>"
    echo "  e.g. sudo sh adduser.sh test"
    exit 1
fi

USERNAME=$1

groupadd $USERNAME
useradd -d /data/$USERNAME -g $USERNAME -G root -s /bin/bash $USERNAME
passwd $USERNAME
