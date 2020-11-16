FROM ubuntu:18.04
LABEL maintainer="Mahfuzur Rahman"
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install wget -y
RUN apt-get install unzip -y

WORKDIR /tmp

RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page258/template-1.zip

RUN unzip template-1.zip

RUN cp -r template-1/*  /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
