#!/bin/sh
iptables -A OUTPUT -d 172.18.0.0/16 -j ACCEPT
iptables -A OUTPUT -d 127.0.0.1/8 -j ACCEPT
iptables -A OUTPUT -d 0.0.0.0/0 -j DROP
python app.py