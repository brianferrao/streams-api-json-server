FROM node
LABEL author='Brian Ferrao'

RUN npm install -g json-server

COPY . /api

WORKDIR /api

RUN npm install

EXPOSE 3001

ENTRYPOINT ["npm", "start"]