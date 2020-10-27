#node con la versión 15
FROM node:14-slim

LABEL maintainer="j_miguel98@hotmail.com"

#usamos el asterisco para copiar directamente package.json y package-lock.json
COPY package*.json ./
COPY gulpfile.js ./

RUN npm install && npm install -g jest-cli && npm install gulp

COPY ./tests ./tests

#para ejecutar los tests
CMD ["gulp","test"]
