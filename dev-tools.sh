#!/bin/bash
curl -s -L "https://github.com/loft-sh/devspace/releases/latest" | sed -nE 's!.*"([^"]*devspace-linux-amd64)".*!https://github.com\1!p' | xargs -n 1 curl -L -o devspace && chmod +x devspace 
sudo mv devspace /usr/local/bin 
wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash 
curl -s -L "https://github.com/loft-sh/vcluster/releases/latest" | sed -nE 's!.*"([^"]*vcluster-linux-amd64)".*!https://github.com\1!p' | xargs -n 1 curl -L -o vcluster && chmod +x vcluster
sudo mv vcluster /usr/local/bin 
brew install kind 
brew install gh
brew install argocd