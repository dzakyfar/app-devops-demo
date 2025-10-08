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
