FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm install nodemon -S

COPY . .

EXPOSE 2001

CMD [ "npm" , "start" ]