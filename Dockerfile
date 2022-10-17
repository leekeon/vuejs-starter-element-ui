FROM node:14-alpine as binary-build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY ./ .
RUN npm run build:prod

FROM nginx as docker-build
RUN mkdir /app
COPY --from=build /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf
