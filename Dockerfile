# Image
FROM openjdk:17-jdk-slim

# Working directory
WORKDIR /app

# Copy the application jar
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8081

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
