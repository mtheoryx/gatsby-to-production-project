FROM node:8.11.4-alpine

CMD ["/bin/sh", "-c", "echo $(node --version)"]