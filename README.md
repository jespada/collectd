# Docker-Collectd

Collectd  running inside a Docker container.

Find this [image on dockerhub](https://registry.hub.docker.com/u/jespada/collectd/)

# Usage

If you want, you can adjust the config file `collectd.conf` to your needs.
After that, run:

`docker build -t jespada/collectd`

`docker run -it --rm jespada/collectd`
    
You can also write your data to any endpoint supported by collectd.
For instance run the following to write the collectd metrics into Kafka:

`docker-compose build`

`docker-compose up`
    
You can check kafka topic with:

`docker ps`

`docker exec -it <collectd-id> /bin/bash`

`root@9ec84a728001:/# kafkacat -C -b kafka1:19092 -t metrics`
