# Utilise une image nginx officielle
FROM nginx:alpine

# Installe nano via apk (le gestionnaire de paquets d'Alpine)
RUN apk update && apk add nano

# Installe git via apk (le gestionnaire de paquets d'Alpine)
RUN apk add --no-cache git

# Supprime la page html par défaut d'nginx
RUN rm -rf /usr/share/nginx/html/*

# Copie ton fichier HTML dans le dossier nginx
COPY index.html /usr/share/nginx/html/index.html

# Expose le port 80
EXPOSE 80

# nginx démarre automatiquement