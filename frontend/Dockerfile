# Use Nginx as the base image
FROM nginx:alpine

# Copy static files to the Nginx HTML directory
COPY frontend/index.html /usr/share/nginx/html/

# Expose the Nginx default port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]