FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt install apache2 -y
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
