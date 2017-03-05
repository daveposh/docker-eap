FROM centos:7

MAINTAINER David Pospishil "daveposh@gmail.com"

RUN yum update -y
RUN yum install unzip zip wget which patch git java-1.8.0-openjdk java-devel -y 

#COPY ./java/${java_bin} /tmp/
#RUN mkdir -p /apps/java && tar -xvf /tmp/${java_bin} -C /apps/java && rm /tmp/${java_bin} -rf

RUN mkdir /apps

COPY run.sh /apps
# EXPOSSE 2 servers for domain type. Standalone 8080 8443 
EXPOSE 8080 8230 8443 8593 8009 8159 9990

CMD "/apps/run.sh"


