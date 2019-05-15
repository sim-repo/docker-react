FROM node:alpine as  builder
WORKDIR '/home/node/app'
COPY package.json .
RUN npm install
COPY . .
RUN echo "$PWD"
CMD ["npm", "run", "build"]

FROM nginx
EXPOSE 80
COPY --from=0 /home/node/app/build /usr/share/nginx/html
