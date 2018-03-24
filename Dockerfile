FROM openjdk:8-jdk-alpine
LABEL MAINTAINER = "haesiku@gmail.com"
VOLUME /tmp
ADD ./build/libs/app.jar app.jar
EXPOSE 8888
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xmx200m","-jar","/app.jar"]