FROM node:14-alpine

RUN apk add --no-cache python make g++ \
 && apk add vips-dev fftw-dev build-base \
        --update-cache \
        --repository https://alpine.global.ssl.fastly.net/alpine/edge/community \
        --repository https://alpine.global.ssl.fastly.net/alpine/edge/main \
 && rm -fR /var/cache/apk/*
    
EXPOSE 3000

ADD ./ /bitbucket-server
WORKDIR /bitbucket-server

RUN npm install




ENTRYPOINT ["npm", "start"]