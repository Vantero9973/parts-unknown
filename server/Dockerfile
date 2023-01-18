FROM node:slim
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

COPY server.js ./

ENTRYPOINT [ "./entrypoint.sh" ]
