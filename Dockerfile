FROM node:alpine

LABEL https://github.com/ceerlepy, https://github.com/ceerlepy

COPY package.json /nodejs/package.json
COPY tsconfig.json /nodejs/tsconfig.json

WORKDIR /nodejs

RUN npm install
RUN npm run build

EXPOSE 3000:3000
