# Dockerfile
FROM node:latest

# Set the working directory in the container
WORKDIR /applications

# Copy package.json and package-lock.json (if available) first to leverage Docker cache
# Copy only package.json and package-lock.json first, then run npm install. 
# This leverages Docker’s caching mechanism, speeding up subsequent builds when dependencies haven't changed.
# Copy all other files after installing dependencies.
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
