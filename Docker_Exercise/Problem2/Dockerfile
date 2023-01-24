FROM ruby
WORKDIR /src/
ARG user='{"name": "John Doe", "age": 33}'
ENV INFO ${user}
COPY ex2.rb .
CMD ruby ex2.rb