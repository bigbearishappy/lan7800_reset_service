# lan7800_reset_service

This project is based on reTerminal+bridge

https://wiki.seeedstudio.com/reTerminal/

## Why create this project?

When doing the ESD test for bridge's lan7800.
Sometimes, the lan7800 will not work well after the ESD test.
So we need to reset the driver of lan7800 to avoid this problem.

## How to use:

1 start your iperf3 server

2 sudo ./lan7800_ESD_test.sh <server ip address> 


## example:

sudo ./lan7800_ESD_test.sh 192.168.113.100

