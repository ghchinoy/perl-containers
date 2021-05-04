#!/usr/bin/perl
use strict;
use warnings;

use Plack::Request;
use JSON qw(to_json);

my %ROUTING = (
    '/'     => \&serve_root,
    '/echo' => \&serve_echo,
);

my $app = sub {
    my $env = shift;
    my $request = Plack::Request->new($env);
    my $route = $ROUTING{$request->path_info};
    if ($route) {
        return $route->($env);
    }
    return [
        '404',
        [ 'Content-Type' => 'text/html' ],
        [ '404 Not Found' ],
    ];
};

sub serve_root {
    my $html = get_html();
    return [
        '404',
        [ 'Content-Type' => 'text/html' ],
        [ $html ],
    ];
}

sub get_html {
    my $t = localtime();
    return qq{
        Hello, perl! it's $t
    };
}

sub serve_echo {
    my $env = shift;
    my $request = Plack::Request->new($env);
    my $data;
    if ($request->param('field')) {
        $data = { text => 'You said: ' . $request->param('field') };
    }
    return [
        '404',
        [ 'Content-Type' => 'application/json' ],
        [ to_json $data ],
    ];
}
