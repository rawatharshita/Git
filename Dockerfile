# Use an official Maven runtime as a parent image
FROM maven:3.8.4-openjdk-11-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the project's source code and pom.xml to the container
COPY ./src ./src
COPY ./pom.xml ./

# Build the application using Maven
RUN mvn clean install

# Use a lightweight Alpine-based OpenJDK runtime as the final image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the build stage to the final image
COPY --from=build /app/target/your-app.jar ./app.jar

# Expose the port that your Java application will listen on (if needed)
EXPOSE 8080

# Define the command to run your Java application
CMD ["java", "-jar", "app.jar"]

