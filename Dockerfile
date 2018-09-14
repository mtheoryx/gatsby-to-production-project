FROM node:8.11.4-alpine

WORKDIR /usr/app/site

RUN npm i -g gatsby@next

# CMD ["/bin/sh", "-c", "echo $(node --version)"]