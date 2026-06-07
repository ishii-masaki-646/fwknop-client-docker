#!/bin/sh
cp /tmp/.fwknoprc /root/.fwknoprc
chmod 600 /root/.fwknoprc
exec fwknop "$@"
