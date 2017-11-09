FROM node 

RUN mkdir -p /webapp

WORKDIR /webapp

COPY . /webapp

RUN npm install 

EXPOSE 3000

CMD [ "npm", "start" ]


