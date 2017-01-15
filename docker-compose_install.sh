#!/bin/bash

if [ "`id | grep root`" = "" ] ; then
    echo "not root."
    echo "command: sudo -i."
    echo "commadn: sh docker-compose_install.sh"
    exit 1
fi

mkdir -p /opt/bin
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /opt/bin/docker-compose
chmod +x /opt/bin/docker-compose
docker-compose -v