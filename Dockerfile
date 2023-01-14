FROM openjdk:8
ARG JAR_FILE=build/libs/\*.jar
WORKDIR /opt
ENV PORT 8080
EXPOSE 8080
COPY ${JAR_FILE} /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar
