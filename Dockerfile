FROM abernix/meteord:onbuild


RUN npm i -g npm n

WORKDIR /app

RUN n stable

RUN npm install

RUN npm run prestart
