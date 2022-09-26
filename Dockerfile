FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y
RUN apt-get install -y apache2
RUN  apt-get install -y zip
RUN  apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/uliya.zip /var/www/html
WORKDIR /var/www/html
RUN unzip uliya.zip
RUN cp -rvf uliya-html/* .
RUN rm -rf uliya uliya.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80
