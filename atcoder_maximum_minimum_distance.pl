use strict;
use warnings;
use utf8;
use 5.014_002;
use List::Util qw/max/;

my $max_distance;
my $min_distance;

chomp( my $N = <STDIN> );
chomp( my @distance = <STDIN> );

$max_distance += $_ for @distance;
if ( $N == 1 ) {
    $min_distance = $max_distance;
} elsif ( $N == 2 ) {
    $min_distance = abs( $distance[1] - $distance[0] );
} else {
    my $longest = max ( @distance );
    my $total_except_longest = $max_distance - $longest;
    if ( $longest > $total_except_longest ) {
	$min_distance = $longest - $total_except_longest;
    } else {
	$min_distance = 0;
    }
}
print "$max_distance\n$min_distance\n";
