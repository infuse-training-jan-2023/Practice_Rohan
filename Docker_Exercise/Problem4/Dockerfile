FROM node
WORKDIR /src/
COPY . /src/
ARG currentdate='{"year": 2022, "month": 6, "day": 17}'
ENV INFO=${currentdate}
RUN npm install 
CMD node ex4.js