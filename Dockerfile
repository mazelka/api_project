FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME sample_mflix
ENV MONGODB_CLUSTER_ADDRESS test-cluster.1q7cvwu.mongodb.net
ENV MONGODB_USERNAME 
ENV MONGODB_PASSWORD 

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]