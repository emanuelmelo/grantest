FROM node:alpine

RUN mkdir /usr/app

COPY package.json yarn.lock ./

RUN yarn install --production

COPY . ./

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
