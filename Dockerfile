FROM node:14-alpine


ADD ./ /bitbucket-server

EXPOSE 3000

WORKDIR /bitbucket-server

ENTRYPOINT ["npm", "start"]