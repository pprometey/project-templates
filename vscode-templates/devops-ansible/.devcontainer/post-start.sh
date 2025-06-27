#!/bin/bash
set -e

sudo chmod o-w .

if test -f /mnt/keys/id_rsa; then
  cp /mnt/keys/id_rsa ~/.ssh/id_rsa
  chmod 600 ~/.ssh/id_rsa
fi

if test -f /mnt/keys/id_rsa.pub; then
  cp /mnt/keys/id_rsa.pub ~/.ssh/id_rsa.pub
  chmod 644 ~/.ssh/id_rsa.pub
fi