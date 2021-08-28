FROM node

RUN mkdir /home/app

WORKDIR /home/app

COPY . .

CMD [ "npm", "start"]