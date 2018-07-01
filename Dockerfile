FROM haxe:3.4.7
LABEL maintainer="Alexander.Blum@gmail.com"
LABEL version="2.4.2"
LABEL description="Static analysis tool for Haxe"

WORKDIR /usr/src/app/

COPY engine.json /
COPY package.json /usr/src/app/

RUN useradd -u 9000 -r -s /bin/false app
USER app

COPY . /usr/src/app
COPY ./lib/haxecheckstyle /haxecheckstyle

VOLUME /code
WORKDIR /code

CMD ["/haxecheckstyle", "-r", "codeclimate"]