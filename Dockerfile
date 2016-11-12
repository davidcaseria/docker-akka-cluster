FROM openjdk:8

ENV AKKA_VERSION 2.4.12

COPY leave_cluster.sh /usr/local/bin/leave-cluster

RUN wget -q -P /tmp http://downloads.typesafe.com/akka/akka_2.11-$AKKA_VERSION.zip \ 
  && unzip -qq -d /tmp /tmp/akka_2.11-$AKKA_VERSION.zip \
  && rm /tmp/akka_2.11-$AKKA_VERSION.zip \
  && mv /tmp/akka-$AKKA_VERSION/bin/* /usr/local/bin \
  && rm -rf /tmp/akka-$AKKA_VERSION \
  && chmod +x /usr/local/bin/akka-cluster

