FROM ubuntu 

RUN npm install 

RUN mkdir -p /webapp

WORKDIR /webapp

COPY . /webapp

EXPOSE 3000

CMD [ "npm", "start" ]


