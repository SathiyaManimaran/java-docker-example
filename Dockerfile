# Use OpenJDK base image
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy JAR
COPY target/*jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
