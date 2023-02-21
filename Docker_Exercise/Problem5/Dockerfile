FROM node
WORKDIR /backend/
ENV PORT=4000
COPY /package.json/ .
RUN npm install
COPY . .
EXPOSE 4000
CMD node ex5.js