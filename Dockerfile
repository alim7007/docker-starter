FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8000

CMD ["node", "server.js"]


# show docker containers
# docker ps

# show docker images
# docker images

# build an image
# docker build -t appimage .

# run from image
# docker run -p 3001:3000 --name appcontainer appimage

#stop dcoker container
#docker stop container

# remove image 
# docker rmi appimage

# remove all exited containers
# docker rm $(docker ps -a -f status=exited -q)