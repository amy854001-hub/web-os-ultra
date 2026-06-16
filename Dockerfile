# Use a super lightweight web server
FROM nginx:alpine

# Copy your single-file WebOS into the server's directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 so you can access it
EXPOSE 80

# Start the web server automatically
CMD ["nginx", "-g", "daemon off;"]
