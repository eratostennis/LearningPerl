use strict;
use warnings;
use utf8;
use 5.014_002;

my $N = <STDIN>;
chomp(my $inputs = <STDIN>);
my $score = 0;
foreach ( split (//, $inputs) ) {
    if ( $_ =~ /A/ ) {
	$score += 4;
    } elsif ( $_ =~ /B/ ) {
	$score += 3;
    } elsif ( $_ =~ /C/ ) {
	$score += 2;
    } elsif ( $_ =~ /D/ ) {
	$score += 1;
    }
}
$score /= $N;
print "$score\n";
