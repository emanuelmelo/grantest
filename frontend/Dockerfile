FROM node:13-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY /frontend/package.json /app/package.json
RUN npm set strict-ssl false
RUN npm install -g
RUN npm install react-scripts -g

CMD ["npm", "start"]
