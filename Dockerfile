FROM openjdk:17-jdk-slim

WORKDIR /app

RUN mvn clean package

COPY ./target/api-springboot-*.jar /app/springapi-docker.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springapi-docker.jar"]
