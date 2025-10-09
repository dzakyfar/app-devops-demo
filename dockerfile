#base img
FROM eclipse-temurin:17-jdk-jammy

#working directory
WORKDIR /app

#maven jar
COPY target/app-devops-demo-1.0.0.jar app.jar

#run apk
ENTRYPOINT ["java", "-jar", "app.jar"]

#port apk
EXPOSE 8080

FROM jenkins/jenkins:lts

USER root

# Install Maven dan tools pendukung
RUN apt-get update && apt-get install -y maven git curl && rm -rf /var/lib/apt/lists/*

USER jenkins

