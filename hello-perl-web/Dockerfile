FROM perl:latest

# https://github.com/miyagawa/cpanminus
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm Carton Starman Plack

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN carton install 

EXPOSE 8080

CMD carton exec starman --port 8080 hello.pm
