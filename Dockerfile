# Use OpenJDK base image
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy JAR
COPY target/java-docker-example-1.0.0-jar-with-dependencies.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
