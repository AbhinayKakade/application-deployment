# Use the official Golang image
FROM golang:1.20

# Set the working directory
WORKDIR /app/frontend

# Copy go mod and sum files
COPY frontend/go.mod ./

# Download dependencies
RUN go mod download

# Copy the application code
COPY frontend/ .

# Build the application
RUN go build -o backend .

# Expose the port the app runs on
EXPOSE 8080

# Start the application
CMD ["./backend"]