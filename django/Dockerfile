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

#RUN python manage.py collectstatic

EXPOSE 8000

CMD ["gunicorn --workers 3 bind 0.0.0.0:8000 [project_name].wsgi:application"]
