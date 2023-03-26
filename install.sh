#!/bin/sh

# terraform CLI
# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
apt-get -y update && apt-get -y install gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
 gpg --dearmor | \
 tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
 tee /etc/apt/sources.list.d/hashicorp.list
apt-get -y update && apt-get -y install terraform

# cdktf CLI
# https://developer.hashicorp.com/terraform/tutorials/cdktf/cdktf-install
npm install --global cdktf-cli@latest
