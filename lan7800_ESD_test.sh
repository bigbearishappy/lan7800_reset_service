#!/bin/bash

# Check root
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root (use sudo)" 1>&2
  exit 1;
fi

echo ethernet client test

./lan7800_error_reset &

iperf3 -c 192.168.113.100 -p 1000 -b 1000M
