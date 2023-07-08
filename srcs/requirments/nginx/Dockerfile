FROM debian:bullseye

# Install nginx

RUN apt-get update && apt-get install -y nginx  openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=RU/ST=Kazan/L=Kazan/O=21school/OU=21kazan/CN=ft_server" \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]

