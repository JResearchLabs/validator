#!/bin/bash

wget https://golang.org/dl/go1.17.5.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile
git clone https://github.com/JResearchLabs/Flutechain.git
cd Flutechain
go build -o Flutechain main.go
sudo mv Flutechain /usr/local/bin