FROM ruby:3.1.0
WORKDIR /usr/src/app
COPY . .
RUN bundle install

## install node for bootstrap
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
RUN /bin/bash -c "source ~/.bashrc && nvm install --lts"
