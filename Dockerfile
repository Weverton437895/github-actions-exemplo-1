FROM node:24-alpine

WORKDIR /app

COPY teste.js .

CMD ["node", "teste.js"]

FROM node:24-alpine

WORKDIR /app

COPY . .
RUN npm install --omit=dev
CMD ["node", "src/index.js"]
EXPOSE 3000