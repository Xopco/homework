FROM tomcat:9.0
RUN apt-get update
RUN apt-get install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /usr/local/tomcat/
RUN cd /usr/local/tomcat/
RUN mvn package