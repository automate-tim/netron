# Use a Node.js base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application files to the container
COPY . .

# Install dependencies
RUN npm install

# Build the web application
RUN npm run build:web

# Expose the port the application will run on
EXPOSE 8080

# Command to run the application
CMD ["npm", "start", "web"]