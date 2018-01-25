FROM ubuntu:latest

EXPOSE 3000

RUN apt-get install -y nodejs
RUN mkdir -p /webapp

WORKDIR /webapp

ADD package.json /webapp

RUN npm install 

ADD . /webapp 

CMD [ "npm", "start"]



