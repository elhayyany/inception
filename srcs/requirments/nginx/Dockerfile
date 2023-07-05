FROM debian:bullseye

# Install nginx

RUN apt-get update && apt-get install -y nginx
# RUN 
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE  443
CMD ["nginx", "-g", "daemon off;"]

