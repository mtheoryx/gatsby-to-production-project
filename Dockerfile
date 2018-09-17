FROM node:8.11.4-alpine

WORKDIR /usr/app/site

# Copy deps
COPY ./site/package.json ./site/package-lock.json* ./
RUN npm install && npm cache clean --force

# Copy source
COPY ./site .

# Run the damn thing
CMD ["npm", "run", "develop"]
