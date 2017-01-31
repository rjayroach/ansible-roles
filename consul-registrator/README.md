## Master

# See: [https://docs.docker.com/swarm/install-manual/#/step-6-communicate-with-the-swarm]

Setup Consul and Swarm Manager on Master

```bash
docker run -d -p 8500:8500 --net=host --name=consul progrium/consul --bind 10.100.199.200 -server -bootstrap
docker run -d -p 4000:4000 swarm manage -H :4000 --replication --advertise 10.100.199.200:4000 consul://10.100.199.200:8500
```

Setup Swarm Manager on Node1

```bash
node1 'docker run -d -p 4000:4000 swarm manage -H :4000 --replication --advertise 10.100.199.201:4000 consul://10.100.199.200:8500'
```

Setup Swarm Nodes on Nodes 2 & 3

```bash
node2 'docker run -d swarm join --advertise=10.100.199.202:2375 consul://10.100.199.200:8500'
node2 'docker run -d --name=registrator --net=host --volume=/var/run/docker.sock:/tmp/docker.sock gliderlabs/registrator:latest -ip 10.100.199:202 consul://10.100.199.200:8500'
node3 'docker run -d swarm join --advertise=10.100.199.203:2375 consul://10.100.199.200:8500'
node3 'docker run -d --name=registrator --net=host --volume=/var/run/docker.sock:/tmp/docker.sock gliderlabs/registrator:latest -ip 10.100.199:203 consul://10.100.199.200:8500'
```

Run Redis on Cluster

```bash
docker -H :4000 run --name some-redis -d redis                                                                                                                                                                            [ruby-2.1.5p273]
```
