## Links
```
https://tecadmin.net/deploy-java-war-docker/
https://tomcat.apache.org/tomcat-10.0-doc/appdev/sample/
https://www.cirruslabs.io/blog1/modernized-technology/how-to-dockerize-an-web-application
https://medium.com/@vishal.sharma./deploy-a-sample-war-java-application-on-docker-25729d4840d5

docker build -t my-java-app .
docker run -d -p 8080:8080 my-java-app
http://public-ip:8080/sample
```

If you just want to browse the contents, you can unpack the war file with the jar command.

        jar -xvf sample.war

## Example Java App
```
docker container run -d -p 8080:8080 tomcat:8.5.47-jdk8-openjdk
```
