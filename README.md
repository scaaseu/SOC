## About
This repository provides a dockerized Kali Linux with purple configuration. 

## Setup
Make sure to have a running docker engine and docker-compose installed. Switch into the repo root directory and spin up the system with `docker-compose up`.

## Jump into SOC
To jump into a root shell of the SOC run `docker exec -ti soc zsh`.

## Data persistency
A docker volume named `soc` is mounted in the container at `/root/data`.

