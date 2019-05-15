FROM node:alpine as  builder
RUN mkdir -p '/app/build'
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN echo "$PWD"
CMD npm run build

FROM nginx
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html
