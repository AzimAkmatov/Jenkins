# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom configuration file to Nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]
