FROM ubuntu:latest

WORKDIR /app

ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y &&\
    apt-get install apache2 -y
    
COPY . index.html /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]