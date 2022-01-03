FROM ubuntu
MAINTAINER tfofana (tidianefofana18@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
#ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
