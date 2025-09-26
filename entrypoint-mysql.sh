#!/bin/bash
# Allow only internal network traffic
iptables -A OUTPUT -d 172.18.0.0/16 -j ACCEPT
iptables -A OUTPUT -d 127.0.0.1/8 -j ACCEPT
iptables -A OUTPUT -j DROP

# Start MySQL normally
mysqld
