#!/usr/bin/env perl

use warnings;
use strict;

my $energy_1 = "";
my $energy_2 = "";

while(<>) {
    if ($_ =~ m/Sum of electronic and thermal Free Energies\s*=\s+(\S+)\s+/i) {
        $energy_1 = $1;
    }

    last if eof;
}

while(<>) {
    if ($_ =~ m/Sum of electronic and thermal Free Energies\s*=\s+(\S+)\s+/) {
        $energy_2 = $1;
    }   

    last if eof;
}

my $prot_affinity = 627.509 * ($energy_2 - $energy_1);

print "$prot_affinity\n";

