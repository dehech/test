FROM openjdk:17-alpine
#RUN apk add --no-cache jre
RUN wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-j_8.3.0-1ubuntu23.10_all.deb -O mysql-connector-java.jar
COPY /spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]

