# Perl Containers

Experiments with Perl and containers.

There are READMEs in the subdirectories.

* `hello-perl` is a container image that just outputs some text. It looks like HTML, but there's no webserver or anything.

* `hello-perl-web` is a webservice - it uses modern perl constructs such as [PSGI/Plack](https://plackperl.org/) as the non-CGI HTTP middleware, [starman](https://metacpan.org/pod/Starman) as the http server, and [cpanm](https://metacpan.org/pod/App::cpanminus#INSTALL), [carton](https://metacpan.org/pod/Carton) for package management. 

