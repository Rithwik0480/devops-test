# Use the Node.js 18 slim image as the base image
FROM node:18-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the HTML file into the container
COPY index.html ./

# Install a lightweight HTTP server
RUN npm install -g serve

# Expose the port the app runs on
EXPOSE 3000

# Command to serve the HTML file
CMD ["serve", "-s", ".", "-l", "3000"]
