FROM nginx
MAINTAINER treylitefm

RUN apt-get update
RUN apt-get install -y python python-dev virtualenv python-virtualenv gcc dialog libaugeas0 augeas-lenses libssl-dev libffi-dev ca-sertificates cron

COPY nginx.conf /etc/nginx/nginx.conf
COPY static  /var/www/static/
COPY certbot-auto /usr/local/bin

RUN echo "30 2 * * 1 /usr/local/bin/certbot-auto renew >> /var/log/le-renew.log" >> certbot_crontab
RUN echo "40 2 * * 1 /etc/init.d/nginx reload" >> certbot_crontab
RUN crontab certbot_crontab
