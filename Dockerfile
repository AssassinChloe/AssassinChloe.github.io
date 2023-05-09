FROM node:16-alpine

WORKDIR /root

RUN npx create-react-app frontend

WORKDIR /root/frontend

RUN npm install -g npm@9.4.0 \
    && npm i\
    && npm install core-js \
    && npm install gh-pages --save-dev

# && rm public/* 
# && rm package.json \

RUN rm public/*
RUN rm package.json

COPY ./ .
# COPY public/* .
# COPY ./package.json .

EXPOSE 3000

CMD npm run deploy