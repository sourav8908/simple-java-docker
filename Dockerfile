# 1. Use a lightweight base image with Java pre-installed
FROM openjdk:17-jdk-alpine

# 2. Set a working directory inside the container
WORKDIR /app

# 3. Copy the Java source file from your host machine into the container
COPY src/Main.java .

# 4. Compile the Java program inside the container
RUN javac Main.java

# 5. Command to run the Java program when the container starts
CMD ["java", "Main"]
