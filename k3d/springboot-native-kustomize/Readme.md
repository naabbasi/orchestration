# sample docker container to deploy into the kubernetes
kubectl create deployment microbot --image=dontrebootme/microbot:v1
echo kubectl scale deployment microbot --replicas=2