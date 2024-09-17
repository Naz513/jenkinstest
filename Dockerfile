FROM node:22

# Install AWS CLI
RUN apt-get update && \
    apt-get install -y unzip && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

# Clean up
RUN rm -rf awscliv2.zip aws

# Set working directory
WORKDIR /app
