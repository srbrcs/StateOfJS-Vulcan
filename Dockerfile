FROM abernix/meteord:onbuild


ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-12.14.0}
ONBUILD ENV NODE_VERSION ${NODE_VERSION:-12.14.0}

RUN npm i -g npm n

WORKDIR /app

RUN npm install

RUN npm run prestart
