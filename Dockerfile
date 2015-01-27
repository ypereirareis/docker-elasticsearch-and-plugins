FROM dockerfile/java:oracle-java8
MAINTAINER Yannick PEREIRA-REIS <yannick.pereira.reis@gmail.com>

RUN apt-get update

RUN apt-get install -y curl

RUN apt-get install -y wget

ENV ES_PKG_NAME elasticsearch-1.4.2

# Install ElasticSearch.
RUN \
  cd / && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/$ES_PKG_NAME.tar.gz && \
  tar xvzf $ES_PKG_NAME.tar.gz && \
  rm -f $ES_PKG_NAME.tar.gz && \
  mv /$ES_PKG_NAME /elasticsearch

RUN \
    /elasticsearch/bin/plugin -i elasticsearch/marvel/latest

RUN \
    /elasticsearch/bin/plugin -i karmi/elasticsearch-paramedic

RUN \
    /elasticsearch/bin/plugin -i mobz/elasticsearch-head

RUN \
    /elasticsearch/bin/plugin -i lukas-vlcek/bigdesk

RUN \
    /elasticsearch/bin/plugin -i royrusso/elasticsearch-HQ


# Define default command.
CMD ["/elasticsearch/bin/elasticsearch"]

EXPOSE 9200
EXPOSE 9300
