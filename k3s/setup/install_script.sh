#!/bin/sh

#Recommended we should install the k3s with K3S_TOKEN, later on easily change the TOKEN (standalone and clusters)
#curl -sfL https://get.k3s.io | K3S_TOKEN=12345 sh -s - server --flannel-backend none
#curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --flannel-backend none --token 12345
curl -sfL https://get.k3s.io | INSTALL_K3S_SKIP_ENABLE=true INSTALL_K3S_EXEC="server" sh -s - --flannel-backend none --token 12345

K3S_KUBECONFIG_MODE="6443" sudo k3s server
