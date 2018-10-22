#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

# Easy way to debug arrays, hashes or whatever by printing them into file
# Remmeber to give +x privilege and run: perl dumper.pl

my @days_array = qw/Mon Tue Wed Thu Fri Sat Sun/;

open (my $dumper, ">", "./arraydump.txt");
print $dumper Dumper(@days_array);
close ($dumper);

my %animals_hash = ('Donald' => "Duck", 'Mickey' => "Mouse", 'Perl' => "Camel");

open (my $dumper2, ">", "./hashdump.txt");
print $dumper2 Dumper(%animals_hash);
close ($dumper2);

my $human_hash_ref = {"Barrack" => "Obama", "Nelson" => "Mandela"};

open (my $dumper3, ">", "./hashrefdump.txt");
print $dumper3 Dumper($human_hash_ref);
close ($dumper3);
