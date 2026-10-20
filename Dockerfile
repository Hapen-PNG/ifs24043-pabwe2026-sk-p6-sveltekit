FROM node:24-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .

ARG VITE_DELCOM_BASEURL=https://open-api.delcom.org/api/v1
ENV VITE_DELCOM_BASEURL=${VITE_DELCOM_BASEURL}

RUN npm run build

ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3005

EXPOSE 3005

CMD ["npm", "start"]
