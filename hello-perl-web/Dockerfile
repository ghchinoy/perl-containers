FROM perl:latest

# https://github.com/miyagawa/cpanminus
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm Carton Starman Plack

COPY hello /usr/src/myapp
COPY cpanfile /user/src/myapp
WORKDIR /usr/src/myapp
RUN carton install --deployment

EXPOSE 8080

CMD carton exec starman --port 8080 hello