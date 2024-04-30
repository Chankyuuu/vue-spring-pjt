# FROM openjdk:17-jdk-alpine

# ARG JAR_FILE=build/libs/*.jar
# COPY ${JAR_FILE} backend.jar

# ENTRYPOINT ["java","-jar","/backend.jar"]

# git action
FROM openjdk:17-jdk-alpine

WORKDIR /app-backend

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} vuespring.jar

ENTRYPOINT ["java","-jar","/vuespring.jar"]