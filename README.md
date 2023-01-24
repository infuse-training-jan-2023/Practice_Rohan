# Practice_Rohan

# Docker Command

# 1
docker build -t docker-ex1 .
docker run -d docker-ex1

# 2
docker build -t docker-ex2 .
docker run -d docker-ex2

# 3
docker build -t docker-ex3 .
docker run -d docker-ex3

# 4
docker build -t docker-ex4 .
docker run -d docker-ex4

# 5
docker build -t docker-ex4 .
docker run -d -p 4000:4000 docker-ex4 

# 6
docker-compose up --build

# other Commands
docker images
docker ps --all
docker kill container-id
docker logs container-id
