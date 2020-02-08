FROM node:alpine

LABEL https://github.com/ceerlepy, https://github.com/ceerlepy

COPY package.json /nodejs/package.json
COPY tsconfig.json /nodejs/tsconfig.json
RUN npm run build
COPY dist /nodejs/dist

WORKDIR /nodejs

RUN npm install

EXPOSE 3000:3000
