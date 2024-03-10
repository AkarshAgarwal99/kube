FROM ubuntu:latest

# Update package lists and install Apache
RUN apt-get update -y && \
    apt-get install -y apache2

# Copy the index.html file
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
