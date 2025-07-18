# Use the official Node.js image as the base image
FROM node:22.15.0-alpine

# Set the working directory in the container
WORKDIR /app

RUN apk add --no-cache curl

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm","run","start"]