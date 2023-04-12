FROM tomcat:alpine as
COPY /builder/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/hello.war
CMD ["catalina.sh", "run"]