#!/bin/bash
if test -f /tmp/usuarios; then
echo ""
else
touch /tmp/usuarios
fi
date
who
