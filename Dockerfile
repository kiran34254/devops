FROM registry.access.redhat.com/ubi8/ubi

# Install packages
RUN yum install -y httpd && yum clean all

# Copy app files
COPY index.html /var/www/html/index.html

# Expose port
EXPOSE 80

# Start Apache
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
