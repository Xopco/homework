FROM tomcat:9.0
RUN apt-get maven
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package
RUN cp /boxfuse-sample-java-war-hello/target/*.war /var/lib/tomcat9/webapps
 


