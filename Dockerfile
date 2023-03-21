FROM node:lts-alpine3.15
RUN mkdir -p /home/app
COPY code/ /home/app
WORKDIR /home/app
RUN npm update
RUN npm install -g npm@8.19.2
RUN npm update
RUN npm install express
RUN npm install ejs
RUN npm install request
RUN npm install body-parser
RUN rm -rf /usr/local/lib/node_modules/npm/node_modules/opener/package.json
RUN rm -rf /home/app/node_modules/cookie/package.json
CMD ["node", "server.js"]
