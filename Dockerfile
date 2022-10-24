FROM maven:3.6.0-jdk-8
RUN mkdir /app
COPY docker/pom.xml /app
COPY docker/target/docker-0.0.1-SNAPSHOT.jar /app
WORKDIR /app
ENTRYPOINT ["java","-jar","docker-0.0.1-SNAPSHOT.jar"]
