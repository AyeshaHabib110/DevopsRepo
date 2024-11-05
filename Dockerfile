# Use Node.js base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY Projectdemo/package*.json ./
RUN npm install

# Copy application files
COPY Projectdemo .

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]

