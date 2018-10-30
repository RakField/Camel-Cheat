#!/usr/bin/perl
   
use strict;
use warnings;

# Read file     
my $filepath = "./example-file-for-fileread.txt";
open(my ($filehandle), '<', $filepath)
or die "File can not be opened '$filepath' $!";
     
while (my $row = <$filehandle>) {
   chomp $row;
   print "$row\n";
}

close($filehandle);
