FROM node

RUN mkdir -p /webapp

WORKDIR /webapp

COPY package.json /webapp
COPY /.now /

RUN npm install 

COPY . /webapp

EXPOSE 3000

CMD [ "npm", "start" ]


