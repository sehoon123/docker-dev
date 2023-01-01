FROM node:alpine

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "start"]

FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
