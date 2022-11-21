FROM amazonlinux
WORKDIR /opt
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.83/bin/apache-tomcat-8.5.83.zip /opt/
RUN yum install unzip -y
RUN yum install vim -y
RUN unzip /opt/apache-tomcat-8.5.83.zip
RUN chmod +x /opt/apache-tomcat-8.5.83/bin/*
RUN amazon-linux-extras install java-openjdk11 -y
COPY ./dptweb-2.0.war /opt/apache-tomcat-8.5.83/webapps/
CMD ["/opt/apache-tomcat-8.5.83/bin/catalina.sh", "run"]