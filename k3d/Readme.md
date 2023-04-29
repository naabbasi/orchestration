https://hackernoon.com/how-to-deploy-apps-to-a-local-k3d-cluster
### Create kubernetes cluster (single node)
In order to setup k3d cluster, please follow the following steps:
1. k3d cluster create control-plane-node
    i. k3d cluster list
2. k3d cluster delete control-plane-node
==================================================================
### Create a namespace and deploy docker container
1. kubectl create namespace dev
2. kubectl get ns or kubectl get namespace
3. kubectl get pods -n dev or kubectl get pods --namespace=dev
4. kubectl config set-context --current --namespace=dev

### Expose kubernetes port(s) to external port(s) for accessing in the browser
1. k3d node list    #It will list down the cluster and its loadbalancer
2. k3d node edit k3d-control-plane-node-serverlb --port-add 30000-30010:30000-30010

### Create a registry to deploy the local docker images into the kubernetes
1. k3d registry create registry.localhost --port 5050 or with registries.yaml

2. k3d cluster create dev-cluster-with-registry --registry-use k3d-registry.localhost:5050

### 2. Build, Tag and Push your own container to the k3d registry
- docker tag nginx:latest k3d-registry.localhost:5050/mynginx:v0.1

##### Build, Tag and Push your own container
- docker build -t go-webserver:latest .
- docker tag go-webserver:latest k3d-registry.localhost:5050/go-webserver:v0.1

###### 3. push that image to the registry
docker push k3d-registry.localhost:5050/go-webserver:v0.1

###### 4. run a pod that uses this image
please use deploy_without_kustomize

###### 5. cleanup 
Please use cleanUp_without_kustomize