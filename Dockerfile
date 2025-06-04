FROM node:22-alpine
WORKDIR /nest-app
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 3000
RUN npm run build
CMD ["npm", "run", "start:prod"]