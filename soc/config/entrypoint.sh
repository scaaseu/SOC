#!/bin/zsh

myIp="$(hostname -I | cut -f1 -d' ')"
echo "public ip: "  $myIp

echo set tor configuration
sed '/^\[global\]/a\HiddenServiceDir /var/lib/tor/hidden_service/' /etc/tor/torrc  

echo tor configuration file
cat /etc/tor/torrc
