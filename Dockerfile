# Sử dụng Tomcat 9 với JDK 21
FROM tomcat:9.0-jdk21

# Xóa webapps mặc định nếu muốn
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ target vào Tomcat (ROOT.war để chạy trên /)
COPY dist/Lab2-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port cho Render
EXPOSE 8080

# Lệnh chạy Tomcat
CMD ["catalina.sh", "run"]
