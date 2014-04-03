use strict;
use warnings;
use utf8;
use 5.014_002;

my $year = <STDIN>;
my $judge = ( $year % 400 == 0 ) ? "YES" : 
    ( $year % 100 == 0 ) ? "NO" :
    ( $year % 4 == 0 ) ? "YES" : "NO";
print $judge. "\n";
