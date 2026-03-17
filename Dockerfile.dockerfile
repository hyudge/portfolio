FROM nginx:alpine

# Supprime la config par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copie ton site dans nginx
COPY . /usr/share/nginx/html

# Expose le port 80
EXPOSE 80

# Lance nginx
CMD ["nginx", "-g", "daemon off;"]