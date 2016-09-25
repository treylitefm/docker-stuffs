FROM ubuntu:xenial
MAINTAINER treylitefm

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python python-pip libmysqlclient-dev

RUN pip install --upgrade pip
RUN pip install Flask==0.10.1 MySQL-python==1.2.5 Flask-SQLAlchemy==2.1 flask-cors flask-bcrypt

RUN mkdir /var/www
ADD the_wall /var/www

EXPOSE 5000

CMD ["python", "/var/www/server.py"]
