# About
This repository provides a dockerized Kali Linux with purple configuration. All traffic is routed through the tor network. docker-gen identifies by reading the environment variable `ONIONSERVICE_NAME` what services should be added to the list of hidden onion services in torrc. The shell `script get_my_onion_node.sh` gives your onion address that can be set i.e. for an meterpreter listener. 

# Setup
Make sure to have a running docker engine and docker-compose installed. Switch into the repo root directory and spin up the system with `docker-compose up`.

# Jump into SOC
To jump into the shell run `docker exec -ti soc zsh`.

# Data persistency
A docker volume named `soc` is mounted in the container at `/root/data`.
