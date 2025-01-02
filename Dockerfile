FROM openjdk:8-jdk-alpine
MAINTAINER upgrad
ADD build/libs/application.jar
/opt/app/application.jar
WORKDIR /opt/app
ENV PATH="${PATH}:${JAVA_HOME}/bin"
ENTRYPOINT [ "java", "-jar", "/opt/app/application.jar"]
