# Use official Nginx lightweight image
FROM nginx:alpine

# Metadata
LABEL author="DevOps Team" \
      version="1.0" \
      description="Custom Nginx Web Server using Docker"

# Copy custom Nginx configuration file
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy website HTML file
COPY index.html /usr/share/nginx/html/index.html

# Set proper permissions for nginx user
RUN chown -R nginx:nginx /usr/share/nginx/html

# Switch to nginx user for security
USER nginx

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
