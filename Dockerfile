# Use official Node.js base image
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY app/package*.json ./
RUN npm install

# Copy application source
COPY app/ .

# Expose port
EXPOSE 3000

# Command to run the app
CMD [ "npm", "start" ]
