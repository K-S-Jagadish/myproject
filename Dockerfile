
FROM tomcat:10.1-jdk21-temurin

# Remove Tomcat's default web applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy our application into Tomcat as the root application
COPY target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

# Document the application port
EXPOSE 8080

# Run Tomcat in the foreground
CMD ["catalina.sh", "run"]
