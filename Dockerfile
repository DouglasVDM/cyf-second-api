# Use this node image
FROM node:12.22.9

# Create this directory. All commands after this will use this directory
WORKDIR /cyf-second-api

# Set up an environment variable names PORT and assign 80 to it
ENV PORT 80

# Copy the contents of package.json file into cyf-second-api directory package.json file
COPY package.json /cyf-second-api/package.json

# Docker will run this command to install all the dependencies
RUN npm install

# Copy everything that is in the current/local directory and put it inside the cyf-second-api directory 
COPY . /cyf-second-api/

# Default command for Docker engine to run when the container the container starts up
CMD [ "node", "index.js" ]
