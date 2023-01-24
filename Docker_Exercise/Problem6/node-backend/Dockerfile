FROM node
WORKDIR /backend/
COPY /package.json/ .
RUN npm install
COPY . .
EXPOSE 5000
CMD node ex5.js