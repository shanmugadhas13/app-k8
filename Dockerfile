FROM node:13-alpine
RUN mkdir -p /home/app
COPY code/ /home/app
WORKDIR /home/app
RUN npm install
RUN npm install express
RUN npm install ejs
RUN npm install request
RUN npm install body-parser
CMD ["node", "server.js"]
