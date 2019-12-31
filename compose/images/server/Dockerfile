FROM openjdk:11-jre-slim

COPY ./blog-0.0.1-SNAPSHOT.jar /

ENTRYPOINT ["java", "-jar","/blog-0.0.1-SNAPSHOT.jar","--spring.profiles.active=product"]