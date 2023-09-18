#!/bin/zsh

echo set tor configuration
echo 'HiddenServiceDir /var/lib/tor/hidden_service/' >> /etc/tor/torrc 

echo tor configuration file
cat /etc/tor/torrc

nohup /bin/zsh & 