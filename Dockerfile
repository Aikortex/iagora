# Usa uma imagem com Node instalado
FROM node:18

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de dependência
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do projeto
COPY . .

# Gera os arquivos de build
RUN npm run build

# Inicia o backend após o build
CMD ["npm", "run", "start:backend"]
