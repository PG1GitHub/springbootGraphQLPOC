FROM alpine:edge
MAINTAINER engDevops
RUN apk add --no-cache openjdk8
COPY target/spring-boot-grapql-example-0.0.1-SNAPSHOT.jar /opt/lib/
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/lib/spring-boot-grapql-example-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080