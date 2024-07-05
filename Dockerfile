# Use an official OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the compiled JAR file into the container
COPY target/*.jar app.jar

# Expose port 8080 (the default Spring Boot port)
EXPOSE 8080

# Start the Spring PetClinic application
CMD ["java", "-jar", "app.jar"]