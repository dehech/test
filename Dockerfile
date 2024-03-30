FROM adoptopenjdk/openjdk17:alpine
COPY /spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]

