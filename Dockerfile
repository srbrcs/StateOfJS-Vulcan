FROM abernix/meteord:onbuild


RUN npm i -g npm 

WORKDIR /app

RUN npm install

RUN npm prestart
