FROM jetty:9.2.10
 LABEL Author="Veeresh Halburgi"
 WORKDIR /var/lib/jenkins/workspace/
 ADD ./dev_proj_WebApp_v01/target/*.war /var/lib/jetty/webapps
 
