FROM maven:3.8.5-openjdk-17

WORKDIR /app

RUN apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
  && curl https://cli-assets.heroku.com/install-ubuntu.sh | bash - \
  && apt-get install -y nodejs

CMD ["/bin/bash"]
