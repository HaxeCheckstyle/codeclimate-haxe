FROM cromo/haxe:3.2.0-neko
MAINTAINER Adi Reddy Mora <adiinteractive@gmail.com>

WORKDIR /usr/src/app/

COPY engine.json /
COPY package.json /usr/src/app/

RUN useradd -u 9000 -r -s /bin/false app
USER app

COPY . /usr/src/app

VOLUME /code
WORKDIR /code

CMD ["/usr/src/app/bin/haxe-checkstyle"]