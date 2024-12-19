FROM node:18.20.5

WORKDIR /app

# Copy package files for both app
COPY . .

# Install the packages & modules for both app
RUN npm install --prefix .

# Expose the port numbers
EXPOSE 5000

CMD ["sh", "-c", "npm start"]