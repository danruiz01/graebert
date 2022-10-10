#!/bin/bash
sudo apt-get update
cat graebert-dependency.list | xargs sudo apt-get -y install
username=$(cat secrets.json  | jq -r ".username")
password=$(cat secrets.json  | jq -r ".password")
licensing=$(cat secrets.json | jq -r ".licensing")
sudo dpkg -i $licensing
/opt/graebert-gmbh/KudoLicensingToolCLI/KudoLicensingToolCLI --user $username --pass $password
