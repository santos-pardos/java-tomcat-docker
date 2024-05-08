# Java Microservice
Build an Spring Boot Java Microservice, Dockerize, and Deploy to Kubernetes Cluster
## Prerequisites:

Install Java Development Kit (JDK), Maven, Docker, and Kubernetes on your local development machine.
Set up a Docker Hub account or another container registry Docker Hub, AWS ECR, DOCR to store your Docker images.
Ensure you have kubectl configured to interact with your Kubernetes cluster.

## Setup
Ensure that you have the necessary tools and accounts set up, as mentioned in the prerequisites.

## Clone Application to the Terminal
Clone the spring  microservice application from your version control system. Assuming you are using Git:

```
git clone https://github.com/mohsinrubel/java-microservice-p7.git
cd java-microservice-p7
```
## Build the Application using Maven
Build your Java microservices using Maven:
```
mvn clean install
```
This will build your microservices and create the necessary JAR files.

## Test the Application Locally
Test your microservices locally. Ensure they are running using `` java -jar target/spring-boot-docker.jar `` command as expected and accessible.

 ## Dockerize Each Application Stack
Create a Dockerfile for each microservice to package it into a Docker image. Here's an example Dockerfile for a Spring Boot microservice:

```
FROM openjdk:17
EXPOSE 8080
ADD target/spring-boot-docker.jar spring-boot-docker.jar 
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]
```

## Deploy the Images to a Public Registry
Build your Docker images and push them to a container registry:
```
docker build -t <registry-username>/<image-name>:<tag> .
docker push <registry-username>/<image-name>:<tag>
```
## Create a Cluster
Set up a Kubernetes cluster, either locally using tools like Minikube or in the cloud using a service like AWS EKS, Google GKE, or Azure AKS.

## Create Deployment and Service Manifest Files for Each Service
Create Kubernetes manifest files `` app.yml `` for each microservice. These files define how each microservice will run in the Kubernetes cluster.

Here's an example manifest for a Deployment and Service:

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: microservice-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: microservice
  template:
    metadata:
      labels:
        app: microservice
    spec:
      containers:
        - name: microservice
          image: <registry-username>/<image-name>:<tag>
          ports:
            - containerPort: 8080

---
apiVersion: v1
kind: Service
metadata:
  name: microservice-service
spec:
  selector:
    app: microservice
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8080
  type: LoadBalancer
```
## Deploy the Microservice onto the Kubernetes Cluster and Test the Application
Apply the Kubernetes manifest files to deploy your microservices to the cluster:

```
kubectl apply -f app.yml
```
Ensure the microservices are running and accessible in the cluster. Test the application by accessing the services within the cluster.
