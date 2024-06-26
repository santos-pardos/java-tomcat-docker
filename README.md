# Install Java and Maven
```
sudo yum install java-17-amazon-corretto-devel–y
sudo yum install java-21-amazon-corretto-devel
java–version
```
```
wget https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-3.9.4-bin.tar.gz
sudo tar xvf apache-maven-3.9.4-bin.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.9.4 /opt/maven
sudo vi /etc/profile.d/maven.sh
```
    export M2_HOME=/opt/maven
    export PATH=${M2_HOME}/bin:${PATH}
```
sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
mvn -version
```

```
WEB-INF
jar -cvf projectname.war *  
jar -xvf projectname.war  or unzip projectname.war
```

page_type: sample
description: "This sample contains a set of projects to help you get started with Service Fabric on Linux using Java as the development language."
languages:
- java
products:
- azure
- azure-service-fabric

##  Other links
### Dockerizing Angular App With Java Backend
```
https://blog.bitsrc.io/dockerizing-angular-app-with-java-backend-fedb96919bc9
https://github.com/bbachi/angular-java-docker
```
# Get started using Azure Service Fabric with Java

This repository contains a set of simple sample projects to help you getting started with Azure Service Fabric on Linux using Java as the development language.

## Prerequisites 

1. To develop Service Fabric Reliable Services & Actor you need to use a [Mac](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-get-started-mac) or [Linux](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-get-started-linux) developer machine. 
2. If you are developing Java applications that do not use the Reliable Services API provided by Service Fabric, you can develop in any environment. 

## How the samples are organized

### reliable-services-actor-sample

This folder contains an application that uses the Service Fabric Reliable Actors & Reliable Services. It is one application with numerous simple services written using the Service Fabric APIs. It is a good place to get started to familiarize yourself with each Reliable Actors or Reliable Services. 

### reliable-services-httpcommunication-sample

This folder contains an application composed of two microservices. The frontend service communicates with the backend service using Http. This is a good sample that illustrates how two microservices in Service Fabric can communicate with each other using Http protocols. 

### reliable-services-embedded-jetty-sample

This folder contains a service that stands up a Jetty server within a Service Fabric stateless service. The Jetty server is a very simple server that is stood up within a stateless service. 

### container-apache-tomcat-web-server-sample

This folder contains an Apache Tomcat Web server that runs inside a container. This web server hosts a simple Hello World Java application. 
