FROM java:8
MAINTAINER Yannick PEREIRA-REIS <yannick.pereira.reis@gmail.com>

RUN apt-get update && apt-get install -y curl wget

ENV ES_PKG_NAME elasticsearch-1.5.2
ENV KIBANA_PKG_NAME kibana-4.0.2

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
    /elasticsearch/bin/plugin -i mobz/elasticsearch-head

RUN \
    /elasticsearch/bin/plugin -i lukas-vlcek/bigdesk

RUN \
    /elasticsearch/bin/plugin -i royrusso/elasticsearch-HQ


RUN \
  cd / && \
  wget https://download.elastic.co/kibana/kibana/$KIBANA_PKG_NAME-linux-x64.tar.gz && \
  tar xvzf $KIBANA_PKG_NAME-linux-x64.tar.gz && \
  rm -f $KIBANA_PKG_NAME-linux-x64.tar.gz && \
  mv $KIBANA_PKG_NAME-linux-x64 /kibana

RUN sed -i "s/^elasticsearch_url: .*$/elasticsearch_url: \"http:\/\/127.0.0.1:9200\"/g" /kibana/config/kibana.yml
RUN cat /kibana/config/kibana.yml

COPY startup.sh /tmp/startup.sh
RUN cat /tmp/startup.sh

# Define default command.
CMD ["/tmp/startup.sh"]

EXPOSE 9200
EXPOSE 9300
EXPOSE 5601
