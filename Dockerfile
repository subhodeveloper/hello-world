# Use a minimal base image
FROM alpine:latest

# Set the working directory in the container
WORKDIR /app

# Create a simple script that prints "Hello, World!"
RUN echo 'echo "Hello, World!"' > hello.sh

# Make the script executable
RUN chmod +x hello.sh

# Run the script when the container launches
CMD ["./hello.sh"]
