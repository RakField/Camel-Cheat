#!/usr/bin/perl
   
use strict;
use warnings;

# Write file
my $filepath = "./written-by-perl.txt";
open (my $filehandle, ">", "$filepath");
print $filehandle "Written by Perl";
close($filehandle);
