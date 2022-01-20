#!/bin/bash

SERVER_IP=$1

# Check root
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root (use sudo)" 1>&2
  exit 1;
fi

# Check param
if [ ! -n "$SERVER_IP" ]; then
   echo "please input the server ip address(example: sudo ./lan7800_ESD_test.sh 192.168.100.0)"
   exit 1;
fi

echo ethernet client test
echo server ip: $SERVER_IP

./lan7800_error_reset &

iperf3 -c $SERVER_IP -p 1000 -b 1000M
