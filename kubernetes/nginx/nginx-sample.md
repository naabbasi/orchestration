## Start nginx server in kubernetes
- sudo kubectl run nginx-http-server --image=nginx --port=80
- sudo kubectl delete pod/nginx-http-server

## Start nginx server in kubernetes and expose=true will create service as well
 - sudo kubectl run nginx-http-server --image=nginx --port=80 --expose=true
 - sudo kubectl delete pod/nginx-http-server
 - sudo kubectl delete -n default service nginx-http-server

## Start nginx server without running in kubernetes cluster
 - sudo kubectl run nginx-http-server --image=nginx --port=80 --expose=true --dry-run=client --output=yaml
