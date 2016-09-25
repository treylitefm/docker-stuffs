FROM ubuntu:trusty
MAINTAINER treylitefm

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python python-pip libpq-dev libmysqlclient-dev python-dev

RUN pip install --upgrade pip

RUN mkdir /var/www
COPY [project_name]/ /var/www

WORKDIR /var/www
RUN pip install psycopg2
RUN pip install gunicorn
RUN pip install -r requirements.txt 

EXPOSE 8000

COPY ./docker-entrypoint.sh /var/www
ENTRYPOINT ["./docker-entrypoint.sh", "[project_name]"]
