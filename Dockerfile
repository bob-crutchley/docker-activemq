FROM alpine:latest
RUN apk update
RUN apk add wget openjdk8
RUN mkdir -p /opt
ARG version
RUN wget http://archive.apache.org/dist/activemq/${version}/apache-activemq-${version}-bin.tar.gz
RUN tar -xzvf apache-activemq-${version}-bin.tar.gz -C /opt/
CMD /opt/apache-activemq-*/bin/activemq console

