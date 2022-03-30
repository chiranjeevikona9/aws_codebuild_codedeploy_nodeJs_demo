#FROM node:14
FROM public.ecr.aws/docker/library/nginx:latest

# Setting working directory. All the path will be relative to WORKDIR
#WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./
COPY index.html /usr/share/nginx/html/
#RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
#COPY . .

#EXPOSE 3000
EXPOSE 80
#CMD [ "node", "index.js" ]
CMD ["nginx", "-g", "daemon off;"]
