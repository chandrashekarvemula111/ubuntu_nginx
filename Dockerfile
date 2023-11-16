FROM ubuntu:latest
LABEL maintainer="chandrashekharvemula"
RUN apt-get update -y && \
    apt-get install nginx -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
