# # downloads image from docker file
# FROM node

# # set working directory in docker image
# WORKDIR /app

# # copy the package.json file from local to docker image under folder /app/package.json
# COPY package.json /app/package.json

# # install the node in docker image
# RUN npm install

# # here it copies the folder
# COPY . app	

# # port of expose is 80
# EXPOSE 80

# # run the node app
# CMD ["npm","start", "-g", "daemon off;"]



# Use an official Node.js runtime as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port your application will run on
EXPOSE 80

# Command to start your application
CMD [ "npm", "start" ]

