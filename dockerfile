# Use a newer version of Ruby
FROM ruby:2.7

# Other instructions remain the same
RUN bundle config --global frozen 1
WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
