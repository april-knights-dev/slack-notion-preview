FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

RUN ls -R dist  # この行を追加して、ビルド後のファイル構造を確認

EXPOSE 80

CMD ["node", "dist/index.js"]