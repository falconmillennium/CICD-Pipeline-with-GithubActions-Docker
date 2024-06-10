FROM openjdk:17-jdk-slim

ARG JAR_FILE=target/api-springboot-0.0.1-SNAPSHOT.jar

WORKDIR /app

COPY ${JAR_FILE} /app/springapi-docker.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springapi-docker.jar"]
