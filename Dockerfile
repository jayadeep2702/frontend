FROM          nginx
COPY          docker-nginx.conf /etc/nginx/nginx.conf
COPY          docker-roboshop.conf /etc/nginx/conf.d/default.conf
RUN           rm -rf /usr/share/ngix/html/*
COPY          ./ /usr/share/nginx/html/
