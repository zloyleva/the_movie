FROM node:10.15.3-alpine

WORKDIR /var/www/
COPY ./app /var/www/

RUN npm install --quiet

EXPOSE 3000

CMD tail -f /etc/hosts