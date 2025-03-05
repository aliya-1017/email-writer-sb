FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvnw clean package -DskipTests

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/email-writer-sb-3.4.3.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]