
# Kubernetes Client

## Issues
- openssl.cnf has to have the IPs of all the nodes that will be accessed b/c the X.509 cert is only valid to connect to those IPs listed
- Vagrant eth0 is the NATed IP, not the hostonly IP (eth1) that the cluster acutally uses to communicate; maybe not an issue
- kubedns: this pod gets it's resolv.conf from it's node's resolv.conf. The Vagrant VM has an unroutable DNS (from POV of pod) of 10.0.2.3


## Configuration

~/.kube/config

## Commands

See: https://kubernetes.io/docs/user-guide/kubectl-cheatsheet

### Shortcuts

-n = namespace
ep = endpoints
svc = service

### Administration

```bash
kubectl get componentstatus
kubectl get nodes
kubectl get nodes \
  --output=jsonpath='{range .items[*]}{.status.addresses[?(@.type=="InternalIP")].address} {.spec.podCIDR} {"\n"}{end}'
kubectl describe node node2
kubectl get deployments
kubectl get services
kubectl -n kube-system get po -o wide
```


```bash
kubectl get pods --all-namespaces --show-labels
NAMESPACE     NAME                            READY     STATUS    RESTARTS   AGE       LABELS
default       nginx-3449338310-7lxc9          1/1       Running   0          35m       pod-template-hash=3449338310,run=nginx
kube-system   kube-dns-v20-1485703853-4rhrs   2/3       Running   22         33m       k8s-app=kube-dns,kubernetes.io/cluster-service=true,pod-template-hash=1485703853,version=v20

kubectl exec -it nginx-3449338310-7lxc9 bash
```

#### Kubernetes Dashboard

```bash
wget https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml
kubectl create -f kubernetes-dashboard.yaml
# The dashboard is running on a node as an internal service. To access it from local machine, create an ssh tunnel to the port the dashboard is running on:
kubectl get pods -o wide -n=kube-system
kubectl describe service kubernetes-dashboard -n=kube-system
ssh -L 9000:node3.rhodes.rhodes-edge.local:31022 vagrant@node3.rhodes.rhodes-edge.local
# from localhost: http://localhost:9000/
```

#### ConfigMap

```bash
# Create a ConfigMap and run once a busybox container that will output the ENV vars
kubectl create -f ~/prepd/kubernetes/config-map-example.yml
# The container will have completed, so get the details including the container id
kubectl describe pod dapi-test-pod

```


#### Reset a pod

```bash
kubectl delete -f 
```


#### Troubleshooting

```bash
kubectl describe po/kube-dns-v20-1485703853-4rhrs --namespace=kube-system
kubectl logs -f --since=1h po/kube-dns-v20-1485703853-4rhrs kubedns --namespace=kube-system
kubectl logs -f --since=1h po/kube-dns-v20-1485703853-4rhrs dnsmasq --namespace=kube-system
```


#### Web

- Cluster API: http://node1.rhodes.rhodes-edge.local:8080

### Operations


kubectl create -f /vagrant/service.yml -f /vagrant/deployment.yml

```bash
kubectl get services
NAME         CLUSTER-IP   EXTERNAL-IP   PORT(S)        AGE
kubernetes   10.32.0.1    <none>        443/TCP        2d
nginx        10.32.0.99   <nodes>       80:30985/TCP   17h
```

- http://node2.rhodes.rhodes-edge.local:30985/

#### Pods

```bash
kubectl get pods --all-namespaces --show-labels
```

#### Jobs

#### ReplicationSets

#### DaemonSets


### DNS

https://kubernetes.io/docs/admin/dns/

Given:


```bash
kubectl get services
NAME         CLUSTER-IP   EXTERNAL-IP   PORT(S)        AGE
kubernetes   10.32.0.1    <none>        443/TCP        7h
nginx        10.32.0.55   <nodes>       80:32271/TCP   6h

kubectl get pods -o wide
NAME                     READY     STATUS    RESTARTS   AGE       IP           NODE
nginx-3449338310-7whvv   1/1       Running   0          6h        10.200.0.3   172.28.128.11
```

Then:

```bash
kubectl exec -it nginx-3449338310-7whvv -- dig nginx.default.svc.cluster.local
kubectl exec -it nginx-3449338310-7whvv -- dig 10-200-0-3.default.pod.cluster.local
kubectl exec -it nginx-3449338310-7whvv -- nslookup kubernetes.default
```

