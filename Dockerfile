#FROM nginx:1.26-alpine3.19-otel
#FROM nginx:alpine
FROM nginx:latest
RUN apt-get update 
RUN apt-get install -y nginx-extras
COPY custom-nginx/ /etc/nginx/
COPY usr/  /usr/share/nginx/html/
#RUN apk add nginx-mod-http-dav-ext
RUN mkdir /srv/client-temp
#RUN mkdir /srv/http/srv/http
RUN mkdir -p /srv/http/srv/http/dav
#COPY usr/  /srv/html/
#RUN mkdir /srv/html/webdav
RUN mkdir /exter-dir
RUN mkdir /iso
RUN ls -la /etc/nginx/sites-enabled
RUN rm  /etc/nginx/conf.d/default.conf
