# Use an official OpenJDK image as a base image
FROM openjdk:17-jdk-slim as builder

# Set the working directory
WORKDIR /app

# Copy the jar file into the Docker image
COPY target/order-service.jar order-service.jar

# Expose the port the app will run on
EXPOSE 8081

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "order-service.jar"]
