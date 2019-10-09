# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="callicoder@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 5000

#COPY target/HelloWorld-0.0.1-SNAPSHOT.jar /home/HelloWorld-0.0.1-SNAPSHOT.jar
# The application's jar file
ARG JAR_FILE=/target/HelloWorld-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} HelloWorld.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/HelloWorld.jar"]
