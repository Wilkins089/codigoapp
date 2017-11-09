FROM ubuntu 

RUN apt install -y aptitude && aptitude install npm 

RUN mkdir -p /webapp

WORKDIR /webapp

COPY . /webapp

EXPOSE 3000

CMD [ "npm", "start" ]


