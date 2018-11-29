FROM fabric8/java-jboss-openjdk8-jdk:1.2.3

ENV JAVA_APP_JAR mapit-spring-0.0.1-SNAPSHOT.jar
ENV AB_ENABLED off
ENV AB_JOLOKIA_AUTH_OPENSHIFT true
ENV JAVA_OPTIONS -Xmx256m 

EXPOSE 8080

RUN chmod -R 777 /deployments/
ADD target/mapit-spring-0.0.1-SNAPSHOT.jar /deployments/
