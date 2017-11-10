FROM ubuntu 

RUN mkdir -p /webapp

WORKDIR /webapp

COPY . /webapp

RUN npm install

CMD [ "npm", "start" ]

EXPOSE 3000
