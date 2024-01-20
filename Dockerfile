# Autobuild from github actions
FROM ghcr.io/maelremrem/congenial-octo-meme:latest

# Copy the website files to the container
COPY html /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
