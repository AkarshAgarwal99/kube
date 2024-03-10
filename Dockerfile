FROM centos:7

# Use a specific mirror for CentOS package installation
RUN sed -i 's|^mirrorlist=|#mirrorlist=|g' /etc/yum.repos.d/CentOS-*.repo && \
    sed -i 's|^#baseurl=http://mirror.centos.org|baseurl=http://mirror.centos.org|g' /etc/yum.repos.d/CentOS-*.repo

# Install httpd
RUN yum install -y httpd

# Copy the index.html file
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start httpd in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
