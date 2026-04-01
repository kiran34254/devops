FROM registry.access.redhat.com/ubi8/ubi

RUN yum install -y python3 && yum clean all

WORKDIR /app

COPY index.html .

EXPOSE 80

CMD ["python3", "-m", "http.server", "80"]
