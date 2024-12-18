# Utiliser l'image Node.js officielle comme image de base
FROM node:16

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier le package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tous les fichiers du projet dans le conteneur
COPY . .

# Exposer le port utilisé par l'API (4000)
EXPOSE 4000

# Définir la commande pour démarrer l'application
CMD ["npm", "start"]
