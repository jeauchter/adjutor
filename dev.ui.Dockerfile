FROM node:alpine
WORKDIR /app
COPY adjutor-ui/package.json ./
COPY adjutor-ui/package-lock.json ./
COPY ./adjutor-ui/ ./
RUN npm i
CMD ["npm", "run", "start"]