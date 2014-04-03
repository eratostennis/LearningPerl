#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use 5.014_002;

chomp( my $N = <STDIN> );
my @wards;
while(<>){
    chomp($_);
    my $ward = reverse $_;
    push ( @wards, $ward );
}
my @reversed_dictionary = sort ( @wards );
foreach (@reversed_dictionary){
    my $re_reversed = reverse $_;
    print "$re_reversed\n";
}
