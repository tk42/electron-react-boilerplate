# Use the official Node.js image as the base image
FROM node:22.5.1

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json# 必要なファイルをコピー
# COPY .erb/scripts /app/.erb/scripts
# COPY package*.json ./

# Copy the rest of the application code
COPY . .

# Install dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]