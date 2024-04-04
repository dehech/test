FROM openjdk:17-alpine
#RUN apk add --no-cache jre
RUN wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-j_8.3.0-1ubuntu23.10_all.deb -O mysql-connector-java.deb
# Update package lists (optional but recommended)
RUN apt-get update
# Install the downloaded DEB package
RUN apt-get install -y ./mysql-connector-java.deb
#RUN apt update && apt install -y /mysql-connector-j_8.3.0-1ubuntu23.10_all.deb
COPY /spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]

