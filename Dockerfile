from amazoncorretto:21-alpine3.21-jdk

EXPOSE 8080

WORKDIR /app

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","app.jar"]
