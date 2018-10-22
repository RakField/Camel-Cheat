#!/usr/bin/perl

use strict;
use warnings;
use CGI;

do_main ( CGI->new );

sub do_main {
    my ( $query ) = @_;

    print CGI::header(
        -charset    => "UTF-8",
        -type       => 'text/html'
    );

    warn "Console debug"; # Only visible in error log
    print "Gimme some water pls"; 
}
