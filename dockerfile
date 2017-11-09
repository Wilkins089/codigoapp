FROM ubuntu 

RUN apt-get -y update && apt-get install -y nodejs 

RUN apt-get install -y npm

RUN mkdir -p /webapp

WORKDIR /webapp

COPY . /webapp

EXPOSE 3000

CMD [ "npm", "start" ]


