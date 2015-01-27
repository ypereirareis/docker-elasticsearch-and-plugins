# docker-elasticsearch-and-plugins
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

```
docker run -d -p 9200:9200 -p 9300:9300
```

## Access API and plugins

* [http://localhost:9200/_cluster/health?pretty=true](http://localhost:9200/_cluster/health?pretty=true)
* [http://localhost:9200/_plugin/marvel](http://localhost:9200/_plugin/marvel)
* [http://localhost:9200/_plugin/paramedic](http://localhost:9200/_plugin/paramedic)
* [http://localhost:9200/_plugin/HQ](http://localhost:9200/_plugin/HQ)
* [http://localhost:9200/_plugin/bigdesk](http://localhost:9200/_plugin/bigdesk)
* [http://localhost:9200/_plugin/head](http://localhost:9200/_plugin/head)
