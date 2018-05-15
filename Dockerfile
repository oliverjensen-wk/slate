FROM ruby:2.3-jessie

# bring in the code, cannot be at root, don't want name collision with middleman build dir (it's just confusing)
WORKDIR /local-build

# bring in the code
COPY . .

# open up port 8000
EXPOSE 8000

# install dependencies
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN bundle install

# so the next command succeeds
RUN npm config set unsafe-perm true
RUN npm install http-server -g

# build the app which puts the compiled html, etc into the build directory
RUN bundle exec middleman build --clean

# move the static files to a subdir for serving
RUN mkdir -p s/cerebral-docs
RUN mv build/* s/cerebral-docs/

CMD ["http-server", "-p", "8000"]
