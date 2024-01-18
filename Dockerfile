FROM httpd

# Install git
RUN apt-get update && apt-get install -y git

# Clone le dépôt GitHub
RUN git clone https://github.com/maelremrem/congenial-octo-meme /usr/local/apache2/htdocs

# Expose le port 80
EXPOSE 80
