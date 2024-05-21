FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 php git
    
EXPOSE 80

RUN rm -rf /var/www/html/*
RUN git clone https://github.com/banago/simple-php-website.git /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]
