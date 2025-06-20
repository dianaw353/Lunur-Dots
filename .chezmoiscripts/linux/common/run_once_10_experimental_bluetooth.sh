#!/usr/bin/env bash
set -e

if [ -f /etc/bluetooth/main.conf ]; then
  sudo sed -i '/Experimental = true/ s/#//' /etc/bluetooth/main.conf
fi
