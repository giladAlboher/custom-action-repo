# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy action code to the container
COPY entrypoint.sh .

# Make the entrypoint script executable
RUN chmod +x entrypoint.sh

# Set the entrypoint for the container
ENTRYPOINT ["./entrypoint.sh"]
