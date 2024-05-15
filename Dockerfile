FROM nginx:1.26-alpine3.19-otel
COPY custom-nginx/ /etc/nginx/
COPY usr/  /usr/share/nginx/html/
RUN apk add nginx-mod-http-dav-ext
RUN mkdir /srv/client-temp
RUN mkdir /srv/http
RUN mkdir /srv/http/webdav
RUN mkdir /exter-dir
RUN mkdir /iso
RUN ls -la /etc/nginx/sites-enabled
RUN rm  /etc/nginx/conf.d/default.conf