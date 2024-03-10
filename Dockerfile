FROM centos:7
# Install httpd
RUN yum install -y httpd
# Copy the index.html file
COPY index.html /var/www/html/
# Expose port 80
EXPOSE 80
# Start httpd in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
