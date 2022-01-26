FROM --platform=linux/amd64 ruby:3.0.2

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get full-upgrade -y
RUN apt-get install -y npm
RUN npm install -g yarn

RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN bundle install

EXPOSE 3000

#CMD ["rails", "s", "-b", "0.0.0.0"]
ENTRYPOINT ["/usr/src/app/docker-entrypoint.sh"]
