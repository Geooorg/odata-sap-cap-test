# Basis-Image
FROM node:18

# Arbeitsverzeichnis setzen
WORKDIR /app

# Pakete kopieren und installieren
COPY package.json package-lock.json ./
RUN npm install --omit=dev

# Projektdateien kopieren
COPY . .

# Port für CAP öffnen
EXPOSE 4004

# Startbefehl für CAP
CMD ["npm", "start"]
