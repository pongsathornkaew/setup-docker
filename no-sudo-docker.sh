#!/bin/bash
sudo groupadd $USER
getent group docker
sudo usermod -aG docker $USER
getent group docker
sudo ls -la /var/run/docker.sock
sudo chmod 666 /var/run/docker.sock
ls -la /var/run/docker.sock
sudo service docker restart
sudo service docker status
