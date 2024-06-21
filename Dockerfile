FROM node:12-alpine3.9

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier le package.json et le package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code de l'application
COPY . .

# Exposer le port sur lequel l'application s'exécute (remplacez 3000 par le port utilisé par votre app si différent)
EXPOSE 3000

CMD ["node", "src/index.js"]
