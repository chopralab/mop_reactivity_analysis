#!/usr/bin/env perl

use warnings;
use strict;

my $literature_reference = shift;

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

my $reference_1 = "";
my $reference_2 = "";

while(<>) {
    if ($_ =~ m/Sum of electronic and thermal Free Energies\s*=\s+(\S+)\s+/i) {
        $reference_1 = $1;
    }

    last if eof;
}

while(<>) {
    if ($_ =~ m/Sum of electronic and thermal Free Energies\s*=\s+(\S+)\s+/) {
        $reference_2 = $1;
    }

    last if eof;
}

my $reference_affinity = 627.509 * ($reference_2 - $reference_1);
my $error = $reference_affinity - $literature_reference;

my $prot_affinity = 627.509 * ($energy_2 - $energy_1 ) - $error;

print "$prot_affinity\n";

