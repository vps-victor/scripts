#!/bin/sh
printf "(IPv4)" && curl -s 'https://ifconfig.me/ip';
printf "\n(IPv6)" && curl -s 'https://ifconfig.co/ip';
