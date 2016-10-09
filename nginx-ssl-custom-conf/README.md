# Nginx

Quick and dirty -- for use with custom nginx config. No magic here...besides letsencrypt of course :p

Using the certbot client, this container automatically renews its every 60-90-ish days (peep the crontab)
It should be noted that the initial cert has to be generated manually using the following command:

```
certbot-auto certonly --text --non-interactive --agree-tos --email yolo@gmail.com --webroot -w /var/www -d [domain-name-here.com]
```
