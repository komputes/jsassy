FROM node

ENV FOO=bar \
    BAR=foo

RUN mkdir /home/app

WORKDIR /home/app

COPY . .

RUN npm install

CMD [ "node", "server.js"]

EXPOSE 1337/tcp
