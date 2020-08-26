FROM node:12-slim

WORKDIR /app

COPY package*.json ./

RUN yarn

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD [ "yarn", "start" ]
