# Use the official lightweight Node.js image based on Alpine Linux.
FROM node:alpine

# Set the working directory inside the container to /src.
WORKDIR /src

# Copy only the package.json file to the container (used for dependency installation).
COPY ./src/package.json .

# Install the Node.js dependencies listed in package.json.
RUN npm install

# Copy the entire application source code into the container.
COPY ./src/ .

# Expose port 3000 for communication (the application will run on this port).
EXPOSE 3000

# Start the application by running the server.js file with Node.js.
CMD ["node", "server.js"]
