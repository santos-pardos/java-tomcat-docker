# Use an official Java runtime as a parent image
FROM tomcat:10.0

# Set the working directory in the container
WORKDIR /usr/local/tomcat

# Copy the WAR file into the Tomcat webapps directory
COPY ./sample.war /usr/local/tomcat/webapps/

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run Tomcat server
CMD ["catalina.sh", "run"]
