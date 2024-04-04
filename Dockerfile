FROM openjdk:17-alpine
RUN apk add --no-cache mysql-connector-java
COPY /spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]

