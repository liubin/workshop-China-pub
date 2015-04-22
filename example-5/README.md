# how to run

# build image


```
$ ./build.sh
```

# start container

Start the first container.

```
$ sudo docker run --rm --name serf-agent1 serf serf agent -log-level=debug -node=node1 -event-handler=/handler.sh
```

In another console, start the second container.

```
$ sudo docker run --rm --name serf-agent2 serf serf agent -log-level=debug -node=node2 -event-handler=/handler.sh

```

In the third console, join the cluster.

```
# get node1's IP address
$ sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' serf-agent1
172.17.0.16


$ sudo docker exec serf-agent2 serf members
node2  172.17.0.19:7946  alive

$ sudo docker exec serf-agent2 serf join 172.17.0.16
Successfully joined cluster by contacting 1 nodes.

$ sudo docker exec serf-agent2 serf members
node2  172.17.0.19:7946  alive
node1  172.17.0.16:7946  alive
```

