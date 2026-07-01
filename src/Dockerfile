FROM node:20 AS builder

WORKDIR /build

COPY package*.json .
RUN npm install

COPY . .

RUN npm run build

FROM node:20 AS runner

WORKDIR /app

COPY --from=builder /build/package*.json ./
COPY --from=builder /build/node_modules ./node_modules
COPY --from=builder /build/dist ./dist

CMD ["npm", "start"]