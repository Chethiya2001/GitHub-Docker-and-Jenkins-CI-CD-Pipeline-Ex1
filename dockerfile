# Use a smaller base image
FROM node:18-alpine  

# Set working directory inside the container
WORKDIR /user/src/app
COPY nodeapp/* /

RUN npm install

# Expose the application port
EXPOSE 3000  

# Start the application
CMD ["npm", "start"]
