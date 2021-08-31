FROM devopsedu/webapp:latest

COPY website /var/www/html/

RUN apt update && \
    apt install -y php
    
EXPOSE 8080

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
