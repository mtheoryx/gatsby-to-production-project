FROM node:8.11.4-alpine

WORKDIR /usr/app/site

# Copy deps
COPY ./site/package.json .
RUN npm install

# Copy source
COPY ./site .

# Run the damn thing
CMD ["npm", "run", "develop"]

# RUN npm i -g gatsby@next

# CMD ["/bin/sh", "-c", "echo $(node --version)"]