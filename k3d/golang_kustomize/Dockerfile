# Base Image
FROM golang:1.20-alpine

# Make app directory
RUN mkdir /app

# Copy all content to the app directory
ADD . /app

# Make app directory the working directory
WORKDIR /app

# Download any required modules
RUN cd simplehttpserver && go mod download

# Build the program to create an executable binary
RUN cd simplehttpserver && go build -o webserver github.com/src/main.go

RUN cd simplehttpserver && mv webserver content ../
RUN ls -ah

# Set the startup command
CMD ["./webserver"]