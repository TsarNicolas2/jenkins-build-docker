

FROM ngnix:latest
RUN sed -i 's/ngix/nico/g' /usr/share/nginx/html/index.html
EXPOSE 80