FROM ubuntu:16.04
RUN apt-get -m update && apt-get install -y \
	wget \
	unzip \
	npm  \
	nodejs \
	&& npm install -g coffee-script
WORKDIR \home
EXPOSE 8787
