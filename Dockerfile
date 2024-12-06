
FROM alpine:latest

RUN apk update && apk add nginx

RUN rm -rf /usr/share/nginx/html/*

COPY ./dist /usr/share/nginx/html/

RUN rm -f /etc/nginx/http.d/default.conf

COPY ./nginx.conf /etc/nginx/http.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

