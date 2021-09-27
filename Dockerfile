FROM tomcat:9.0
RUN apt-get update
RUN apt-get install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cp -r boxfuse-sample-java-war-hello/* /usr/local/tomcat/
RUN mvn package
RUN cp /usr/local/tomcat/target/hello-1.0.war /usr/local/tomcat/webapps/webapps.dist/