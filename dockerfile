FROM ubuntu

RUN mkdir -p /webapp

WORKDIR /webapp

COPY . /webapp

COPY package.json /webapp

RUN aptitude install npm  

EXPOSE 3000

CMD [ "npm", "start" ]


