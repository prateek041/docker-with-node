# specifies the base image.
FROM node:15  

# Sets working directory of our app as /app in container. anything we do to the app is going to be reflected in /app by default.
WORKDIR /app

# Copy everything in the package.json in the Current directory, which is /app by default.
COPY package.json .

# install all the dependencies in the pachage.json file.
RUN npm install

# copy files in the container in build stage.
COPY . ./

# this actually does nothing, it just tells that this image uses port 3000.
EXPOSE 3000

# what command to run on starting container.
CMD ["npm", "run", "dev"]