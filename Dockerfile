# Use an LTS Node version for stability
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package files to install dependencies
COPY package*.json ./

# Install dependencies using npm ci
RUN npm ci

# Copy remaining files
COPY . .

# Build the app for production
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the app in production mode
CMD ["npm", "start"]
