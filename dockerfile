FROM node:6.9

EXPOSE 3000

RUN mkdir -p /webapp

WORKDIR /webapp

ADD package.json /webapp

RUN npm install 

ADD . /webapp 

CMD [ "npm", "start"]



