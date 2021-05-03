# Perl Containers

Experiments with Perl and containers.

* `hello-perl` is a container image that just outputs some text. It looks like HTML, but there's no webserver or anything.

* `hello-perl-web` is a webservice - it uses modern perl constructs such as [PSGI/Plack](https://plackperl.org/) as well as [cpanm](https://metacpan.org/pod/App::cpanminus#INSTALL) - a package manager for Perl/CPAN, [carton](https://metacpan.org/pod/Carton), another CPAN package manager; 
[starman](https://metacpan.org/pod/Starman), Webserver in perl.

