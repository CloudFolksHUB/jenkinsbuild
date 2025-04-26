# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built jar file from target/ directory to /app inside the container
COPY target/*.jar app.jar

# Expose port 8080 inside the container
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
