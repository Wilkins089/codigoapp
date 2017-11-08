FROM ubuntu

RUN mkdir -p /webapp

WORKDIR /webapp

COPY package.json /webapp

RUN apt-get install -y npm

COPY . /webapp

EXPOSE 3000

CMD [ "npm", "start" ]


