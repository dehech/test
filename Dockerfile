FROM openjdk:17
ADD out/artifacts/gestion_jar/gestion.jar gestion.jar
ENTRYPOINT ["java","-jar","/gestion.jar"]

