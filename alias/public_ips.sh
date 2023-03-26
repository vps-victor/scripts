#!/bin/sh
# Take public IPv4 and Ipv6 with curl if they exist
printf "(IPv4)" && curl -s 'https://ifconfig.me/ip';
printf "\n(IPv6)" && curl -s 'https://ifconfig.co/ip';
