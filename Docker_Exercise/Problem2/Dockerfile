FROM ruby
WORKDIR /src/
RUN gem install json
ARG user='{"name": "John Doe", "age": 33}'
ENV INFO ${user}
COPY ex2.rb .
CMD ruby ex2.rb