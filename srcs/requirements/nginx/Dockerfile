FROM alpine:3.17
RUN apk update && apk add nginx
COPY index.html /usr/local/nginx/www/index.html
COPY nginx.conf /etc/nginx/nginx.conf 
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
