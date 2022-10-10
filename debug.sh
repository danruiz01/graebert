#!/bin/bash
username=$(cat secrets.json  | jq -r ".username")
password=$(cat secrets.json  | jq -r ".password")
licensing=$(cat secrets.json | jq -r ".licensing")
echo $username
echo $password
echo $licensing
sudo dpkg -i $licensing
/opt/graebert-gmbh/KudoLicensingToolCLI/KudoLicensingToolCLI --user $username --pass $password --list --host --returnnmano