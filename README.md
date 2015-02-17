# docker-elasticsearch-and-plugins

[![Join the chat at https://gitter.im/ypereirareis/docker-elasticsearch-and-plugins](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ypereirareis/docker-elasticsearch-and-plugins?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
A Dockerfile to built a docker image with ElasticSearch and many plugins

ElasticSearch version: 1.4

**Plugins**

* Marvel
* Paramedic
* BigDesk
* HQ
* Head

## Get it

```
git clone https://github.com/ypereirareis/docker-elasticsearch-and-plugins.git
```

## Run docker container

**Single node**

```
docker run -d -p 9200:9200 -p 9300:9300 ypereirareis/docker-elk-and-plugins
```

**Small cluster**

Just run several containers changing the binding for http and transport ports:

```
docker run -d -p 9200:9200 -p 9300:9300 ypereirareis/docker-elk-and-plugins
docker run -d -p 9201:9200 -p 9301:9300 ypereirareis/docker-elk-and-plugins
docker run -d -p 9202:9200 -p 9302:9300 ypereirareis/docker-elk-and-plugins
```

## Access API and plugins

These URLs are available for each node because HTTP is allowed for each by default.

* [http://localhost:9200/_cluster/health?pretty=true](http://localhost:9200/_cluster/health?pretty=true)
* [http://localhost:9200/_plugin/marvel](http://localhost:9200/_plugin/marvel)
* [http://localhost:9200/_plugin/paramedic](http://localhost:9200/_plugin/paramedic)
* [http://localhost:9200/_plugin/HQ](http://localhost:9200/_plugin/HQ)
* [http://localhost:9200/_plugin/bigdesk](http://localhost:9200/_plugin/bigdesk)
* [http://localhost:9200/_plugin/head](http://localhost:9200/_plugin/head)
