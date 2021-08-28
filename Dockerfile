FROM node

RUN mkdir /home/app

WORKDIR /home/app

COPY . .

RUN npm install express

CMD [ "node", "server.js"]

EXPOSE 1337/tcp
