use strict;
use warnings;
use utf8;
use 5.014_002;

my $N = <STDIN>;
my @coordinates = <STDIN>;
my $start_count = 0;
my $end_count = 0;
my $longest_distance = 0;
foreach my $start (@coordinates) {
    my ( $start_x, $start_y) = split / /, $start;
    $end_count = 0;
    foreach my $end (@coordinates) {
	if($end_count <= $start_count) {
	    $end_count++;
	    next;
	}
	my ( $end_x, $end_y) = split / /, $end;
	my $tmp_distance = (($start_x - $end_x)**2 + ($start_y - $end_y)**2)**(0.5);
	$longest_distance = $tmp_distance if($tmp_distance > $longest_distance);
	$end_count++;
    }
    $start_count++;
} 
print "$longest_distance\n"
