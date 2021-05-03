FROM perl:latest

# https://github.com/miyagawa/cpanminus
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm Carton Starman

EXPOSE 8080

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

CMD carton exec starman --port 8080 hello