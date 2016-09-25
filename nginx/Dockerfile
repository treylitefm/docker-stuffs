FROM nginx
MAINTAINER treylitefm

WORKDIR /etc/nginx/

COPY nginx.conf.template  /etc/nginx/nginx.conf.template
COPY generate_conf.sh     /etc/nginx/generate_conf.sh
RUN ./generate_conf.sh -a [app_name] -p [port_number] -s [server_name]
RUN mv nginx-[app_name].conf nginx.conf

COPY static  /var/www/static/
