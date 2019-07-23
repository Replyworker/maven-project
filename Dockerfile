FROM tomcat:8.0

/* Notice that this is running from within
the Jenkins build folder so we have to follow
the path to reach the WAR package */
/* 
Notice that we are simply moving again our package file to 
the container inside tomcat webapp folder as we have previously 
done with the EC2 deploy trough ssh. Tomcat will automatically
check that folder for wars file.
*/

ADD ./web/target/*.war /usr/local/tomcat/webapps

EXPOSE 8080 /*This is the port within the CONTAINER*/

CMD ["catalina.sh","run"] /* This will start the tomcat server on the container startup*/