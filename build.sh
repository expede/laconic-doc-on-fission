#!/bin/bash
apt-get update && apt-get install -y wget 

wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
tar -C /usr/local -xzf  go1.13.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

wget https://github.com/gohugoio/hugo/releases/download/v0.91.0/hugo_extended_0.91.0_Linux-64bit.tar.gz
tar -xzf  hugo_extended_0.91.0_Linux-64bit.tar.gz -C /usr/local/bin
hugo version && rm hugo_extended_0.91.0_Linux-64bit.tar.gz

# # install fission cli
# wget https://github.com/fission-suite/fission/releases/download/2.17.0/fission-cli-ubuntu-20.04-x86_64 -o /tmp/fission-cli.deb
# dpkg -i /tmp/fission-cli.deb
# rm /tmp/fission-cli.deb

source /root/.bashrc

hugo

# fission --version
