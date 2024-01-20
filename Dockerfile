# Ajoute ces lignes pour taguer l'image
ARG IMAGE_TAG
LABEL image_tag=$IMAGE_TAG

# Ajoute ces lignes pour ajouter une description
LABEL description="Custom Streaming Service"

# Ton mainteneur (peut être toi-même)
LABEL maintainer="Maelremrem"

FROM nginx

# Copy the website files to the container
COPY html /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
