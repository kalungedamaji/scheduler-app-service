FROM maven:3.6.0-jdk-8-alpine as build

VOLUME /tmp
COPY target/scheduler-app-service*.jar scheduler-app-service.jar

CMD java -Dserver.port=$PORT $JAVA_OPTS -jar cheduler-app-service.jar