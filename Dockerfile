FROM node

RUN mkdir /home/app

WORKDIR /home/app

COPY . .

CMD [ "node", "/home/app/server.js"]