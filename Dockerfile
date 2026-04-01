FROM registry.access.redhat.com/ubi8/ubi

RUN yum install -y httpd && yum clean all

# Fix required runtime dirs
RUN mkdir -p /run/httpd /var/log/httpd

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
