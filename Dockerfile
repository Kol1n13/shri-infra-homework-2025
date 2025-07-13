FROM node:18
WORKDIR /app

RUN npm install -g nodemon

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

CMD ["nmp", "start"]
