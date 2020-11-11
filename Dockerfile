FROM ubuntu:18.04
LABEL maintainer="Mahfuzur Rahman"
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install wget -y
RUN apt-get install unzip -y

WORKDIR /tmp

RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page259/the-town.zip

RUN unzip the-town.zip

RUN cp -r the-town/*  /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
