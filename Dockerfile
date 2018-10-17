FROM jetty:9.2.10
 LABEL Author="Veeresh Halburgi"
 WORKDIR /var/lib/jenkins/workspace/
 ADD ./pipeline_project/target/*.war /var/lib/jetty/webapps
 
