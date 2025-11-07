# Use nginx lightweight image as base
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files (HTML, CSS, JS, JSON) to nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
