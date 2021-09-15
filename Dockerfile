FROM jetty:9.2.10
 LABEL Author="Veeresh Halburgi"
 # WORKDIR /var/lib/jenkins/workspace/
 COPY target/WebApplication.war /var/lib/jetty/webapps
 
