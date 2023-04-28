#!/bin/sh

#Setting up kubernetes dashboard
GITHUB_URL=https://github.com/kubernetes/dashboard/releases
VERSION_KUBE_DASHBOARD=$(curl -w '%{url_effective}' -I -L -s -S ${GITHUB_URL}/latest -o /dev/null | sed -e 's|.*/||')
sudo k3s kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/${VERSION_KUBE_DASHBOARD}/aio/deploy/recommended.yaml

sudo k3s kubectl create -f dashboard.admin-user.yml -f dashboard.admin-user-role.yml

sudo k3s kubectl -n kubernetes-dashboard create token admin-user

sudo k3s kubectl proxy

firefox --new-tab http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/
