use strict;
use warnings;
use utf8;
use 5.014_002;

chomp( my $inputs = <STDIN> );
my ( $A, $B ) = split / /, $inputs;

my $diff = abs( $B - $A );
my $count = int( $diff / 10 );
my $rank1 = $diff % 10;
if( $rank1 == 2 || $rank1 == 4 || $rank1 == 6 || $rank1 == 9 ){
    $count += 2;
}elsif($rank1 == 3 || $rank1 == 7 || $rank1 == 8){
    $count += 3;
}elsif($rank1 == 1 || $rank1 == 5){
    $count++;
}
print "$count\n";
