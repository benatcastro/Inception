FROM alpine:3.17
RUN apk update && apk add --no-cache nginx && apk --no-cache add openssl
COPY conf/nginx.conf /etc/nginx/nginx.conf 
RUN openssl req -x509 \
		-nodes \
		-days 365 \
		-subj "/C=CA/ST=QC/O=42Urduliz, Inc./CN=42inception.com" \
		-addext "subjectAltName=DNS:42incpetion.com" \
		-newkey rsa:2048 \
		-keyout /etc/ssl/private/nginx-selfsigned.key \
		-out /etc/ssl/certs/nginx-selfsigned.crt;
CMD ["nginx", "-g", "daemon off;"]
