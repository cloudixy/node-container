FROM node:16-alpine

LABEL maintainer="avsectimotej1@gmail.com"

RUN npm install -g @vue/cli
RUN npm install -g create-nuxt-app
RUN npm install -g create-react-app